.class Landroidx/loader/content/ModernAsyncTask$2;
.super Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/ModernAsyncTask$WorkerRunnable<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroidx/loader/content/ModernAsyncTask;


# direct methods
.method public constructor <init>(Landroidx/loader/content/ModernAsyncTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/loader/content/ModernAsyncTask$2;->b:Landroidx/loader/content/ModernAsyncTask;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask$2;->b:Landroidx/loader/content/ModernAsyncTask;

    iget-object v1, v0, Landroidx/loader/content/ModernAsyncTask;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v1, 0xa

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v1, p0, Landroidx/loader/content/ModernAsyncTask$WorkerRunnable;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/loader/content/ModernAsyncTask;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v3}, Landroidx/loader/content/ModernAsyncTask;->d(Ljava/lang/Object;)V

    return-object v3

    :catchall_0
    move-exception v1

    :try_start_1
    iget-object v4, v0, Landroidx/loader/content/ModernAsyncTask;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v3}, Landroidx/loader/content/ModernAsyncTask;->d(Ljava/lang/Object;)V

    throw v1
.end method
