.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimedReplayCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/observables/ConnectableObservable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lio/reactivex/Observable;

.field public final b:J

.field public final c:Ljava/util/concurrent/TimeUnit;

.field public final d:Lio/reactivex/Scheduler;


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->a:Lio/reactivex/Observable;

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->b:J

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->d:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->a:Lio/reactivex/Observable;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->d:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/reactivex/Observable;->replay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method
