.class final Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTakeLastOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TakeLastOneObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field public final a:Lio/reactivex/Observer;

.field public b:Lio/reactivex/disposables/Disposable;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->a:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->c:Ljava/lang/Object;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->b:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->b:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->c:Ljava/lang/Object;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->a:Lio/reactivex/Observer;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->c:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->c:Ljava/lang/Object;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->c:Ljava/lang/Object;

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->b:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->b:Lio/reactivex/disposables/Disposable;

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->a:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
