.class final Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnError;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OnError"
.end annotation


# instance fields
.field public final a:Ljava/lang/Throwable;

.field public final synthetic b:Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnError;->b:Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnError;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnError;->b:Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;

    :try_start_0
    iget-object v1, v0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->a:Lio/reactivex/Observer;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnError;->a:Ljava/lang/Throwable;

    invoke-interface {v1, v2}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->d:Lio/reactivex/Scheduler$Worker;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void

    :catchall_0
    move-exception v1

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->d:Lio/reactivex/Scheduler$Worker;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    throw v1
.end method
