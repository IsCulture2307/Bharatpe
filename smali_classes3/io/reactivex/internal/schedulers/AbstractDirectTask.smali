.class abstract Lio/reactivex/internal/schedulers/AbstractDirectTask;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/schedulers/SchedulerRunnableIntrospection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/util/concurrent/Future<",
        "*>;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/schedulers/SchedulerRunnableIntrospection;"
    }
.end annotation


# static fields
.field protected static final DISPOSED:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected static final FINISHED:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1924f211b909b42fL


# instance fields
.field protected final runnable:Ljava/lang/Runnable;

.field protected runner:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/FutureTask;

    sget-object v1, Lio/reactivex/internal/functions/Functions;->b:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    sput-object v0, Lio/reactivex/internal/schedulers/AbstractDirectTask;->FINISHED:Ljava/util/concurrent/FutureTask;

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    sput-object v0, Lio/reactivex/internal/schedulers/AbstractDirectTask;->DISPOSED:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/AbstractDirectTask;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    sget-object v1, Lio/reactivex/internal/schedulers/AbstractDirectTask;->FINISHED:Ljava/util/concurrent/FutureTask;

    if-eq v0, v1, :cond_1

    sget-object v1, Lio/reactivex/internal/schedulers/AbstractDirectTask;->DISPOSED:Ljava/util/concurrent/FutureTask;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/reactivex/internal/schedulers/AbstractDirectTask;->runner:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    sget-object v1, Lio/reactivex/internal/schedulers/AbstractDirectTask;->FINISHED:Ljava/util/concurrent/FutureTask;

    if-eq v0, v1, :cond_1

    sget-object v1, Lio/reactivex/internal/schedulers/AbstractDirectTask;->DISPOSED:Ljava/util/concurrent/FutureTask;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final setFuture(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    sget-object v1, Lio/reactivex/internal/schedulers/AbstractDirectTask;->FINISHED:Ljava/util/concurrent/FutureTask;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lio/reactivex/internal/schedulers/AbstractDirectTask;->DISPOSED:Ljava/util/concurrent/FutureTask;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lio/reactivex/internal/schedulers/AbstractDirectTask;->runner:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-void
.end method
