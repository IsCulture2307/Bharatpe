.class final Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableDoFinally;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoFinallyObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable<",
        "TT;>;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lio/reactivex/Observer;

.field public final b:Lio/reactivex/functions/Action;

.field public c:Lio/reactivex/disposables/Disposable;

.field public d:Lio/reactivex/internal/fuseable/QueueDisposable;

.field public e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Action;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a:Lio/reactivex/Observer;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->b:Lio/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->b:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->d:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->c:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->c:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->d:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->c:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->c:Lio/reactivex/disposables/Disposable;

    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    if-eqz v0, :cond_0

    check-cast p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->d:Lio/reactivex/internal/fuseable/QueueDisposable;

    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_1
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->d:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a()V

    :cond_0
    return-object v0
.end method

.method public final requestFusion(I)I
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->d:Lio/reactivex/internal/fuseable/QueueDisposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    and-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_2

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/QueueFuseable;->requestFusion(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->e:Z

    :cond_1
    return p1

    :cond_2
    return v1
.end method
