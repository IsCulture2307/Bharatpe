.class public final Lio/reactivex/internal/operators/observable/ObservableRepeatWhen;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lio/reactivex/functions/Function;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen;->b:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/Observer;)V
    .locals 4

    new-instance v0, Lio/reactivex/subjects/PublishSubject;

    invoke-direct {v0}, Lio/reactivex/subjects/PublishSubject;-><init>()V

    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->f()Lio/reactivex/subjects/Subject;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen;->b:Lio/reactivex/functions/Function;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The handler returned a null ObservableSource"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lio/reactivex/ObservableSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->a:Lio/reactivex/ObservableSource;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/subjects/Subject;Lio/reactivex/ObservableSource;)V

    invoke-interface {p1, v2}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    iget-object p1, v2, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver;->e:Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver$InnerRepeatObserver;

    invoke-interface {v1, p1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver;->a()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    return-void
.end method
