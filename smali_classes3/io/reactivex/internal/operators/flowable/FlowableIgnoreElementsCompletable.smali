.class public final Lio/reactivex/internal/operators/flowable/FlowableIgnoreElementsCompletable;
.super Lio/reactivex/Completable;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/fuseable/FuseToFlowable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableIgnoreElementsCompletable$IgnoreElementsSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Completable;",
        "Lio/reactivex/internal/fuseable/FuseToFlowable<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public final c()Lio/reactivex/Flowable;
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    throw v1
.end method

.method public final d(Lio/reactivex/CompletableObserver;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
