.class public final Lio/reactivex/internal/operators/observable/BlockingObservableLatest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lio/reactivex/ObservableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest;->a:Lio/reactivex/ObservableSource;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;

    invoke-direct {v0}, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;-><init>()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest;->a:Lio/reactivex/ObservableSource;

    invoke-static {v1}, Lio/reactivex/Observable;->wrap(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Observable;->materialize()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-object v0
.end method
