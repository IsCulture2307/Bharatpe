.class public Lcom/google/firebase/messaging/CommonNotificationBuilder$DisplayNotificationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/CommonNotificationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayNotificationInfo"
.end annotation


# instance fields
.field public final a:Landroidx/core/app/NotificationCompat$Builder;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/CommonNotificationBuilder$DisplayNotificationInfo;->a:Landroidx/core/app/NotificationCompat$Builder;

    iput-object p2, p0, Lcom/google/firebase/messaging/CommonNotificationBuilder$DisplayNotificationInfo;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/firebase/messaging/CommonNotificationBuilder$DisplayNotificationInfo;->c:I

    return-void
.end method
