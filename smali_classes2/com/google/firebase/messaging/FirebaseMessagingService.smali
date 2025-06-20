.class public Lcom/google/firebase/messaging/FirebaseMessagingService;
.super Lcom/google/firebase/messaging/EnhancedIntentService;
.source "SourceFile"


# static fields
.field public static final ACTION_DIRECT_BOOT_REMOTE_INTENT:Ljava/lang/String; = "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

.field static final ACTION_NEW_TOKEN:Ljava/lang/String; = "com.google.firebase.messaging.NEW_TOKEN"

.field static final ACTION_REMOTE_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final RECENTLY_RECEIVED_MESSAGE_IDS_MAX_SIZE:I = 0xa

.field private static final recentlyReceivedMessageIds:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private rpc:Lcom/google/android/gms/cloudmessaging/Rpc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/EnhancedIntentService;-><init>()V

    return-void
.end method

.method private alreadyReceivedMessage(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "FirebaseMessaging"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method private dispatchMessage(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "androidx.content.wakelockid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/firebase/messaging/NotificationParams;->j(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/firebase/messaging/NotificationParams;

    invoke-direct {v1, v0}, Lcom/google/firebase/messaging/NotificationParams;-><init>(Landroid/os/Bundle;)V

    new-instance v2, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v3, "Firebase-Messaging-Network-Io"

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/messaging/DisplayNotification;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/firebase/messaging/DisplayNotification;-><init>(Landroid/content/Context;Lcom/google/firebase/messaging/NotificationParams;Ljava/util/concurrent/ExecutorService;)V

    :try_start_0
    invoke-virtual {v3}, Lcom/google/firebase/messaging/DisplayNotification;->a()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->d(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_nf"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw p1

    :cond_2
    :goto_0
    new-instance p1, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-direct {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    return-void
.end method

.method private getMessageId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "google.message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getRpc(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/Rpc;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessagingService;->rpc:Lcom/google/android/gms/cloudmessaging/Rpc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/cloudmessaging/Rpc;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/cloudmessaging/Rpc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessagingService;->rpc:Lcom/google/android/gms/cloudmessaging/Rpc;

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessagingService;->rpc:Lcom/google/android/gms/cloudmessaging/Rpc;

    return-object p1
.end method

.method private handleMessageIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "google.message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->alreadyReceivedMessage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->passMessageIntentToSdk(Landroid/content/Intent;)V

    :cond_0
    invoke-direct {p0, p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->getRpc(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/Rpc;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/cloudmessaging/CloudMessage;

    invoke-direct {v2, p1}, Lcom/google/android/gms/cloudmessaging/CloudMessage;-><init>(Landroid/content/Intent;)V

    iget-object p1, v1, Lcom/google/android/gms/cloudmessaging/Rpc;->c:Lcom/google/android/gms/cloudmessaging/zzw;

    invoke-virtual {p1}, Lcom/google/android/gms/cloudmessaging/zzw;->a()I

    move-result p1

    const v3, 0xdedfaa0

    if-lt p1, v3, :cond_4

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v2, Lcom/google/android/gms/cloudmessaging/CloudMessage;->a:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "message_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "google.product_id"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, v1, Lcom/google/android/gms/cloudmessaging/Rpc;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/cloudmessaging/zzv;->a(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/zzv;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cloudmessaging/zzv;->b(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    :goto_1
    return-void
.end method

.method private passMessageIntentToSdk(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "message_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcm"

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "send_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "send_error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "deleted_messages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "google.message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageSent(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->getMessageId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/messaging/SendException;

    const-string v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/firebase/messaging/SendException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onSendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :pswitch_2
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->b(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->dispatchMessage(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onDeletedMessages()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7aedf14e -> :sswitch_3
        0x18f11 -> :sswitch_2
        0x308f3e91 -> :sswitch_1
        0x3090df23 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static resetForTesting()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method


# virtual methods
.method public getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    invoke-static {}, Lcom/google/firebase/messaging/ServiceStarter;->a()Lcom/google/firebase/messaging/ServiceStarter;

    move-result-object p1

    iget-object p1, p1, Lcom/google/firebase/messaging/ServiceStarter;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    return-object p1
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->handleMessageIntent(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public onDeletedMessages()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 0
    .param p1    # Lcom/google/firebase/messaging/RemoteMessage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public setRpcForTesting(Lcom/google/android/gms/cloudmessaging/Rpc;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessagingService;->rpc:Lcom/google/android/gms/cloudmessaging/Rpc;

    return-void
.end method
