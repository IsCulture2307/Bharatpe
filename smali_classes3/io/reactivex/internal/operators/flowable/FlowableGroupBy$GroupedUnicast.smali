.class final Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;
.super Lio/reactivex/flowables/GroupedFlowable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupedUnicast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/flowables/GroupedFlowable<",
        "TK;TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic d:I


# instance fields
.field public final c:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/flowables/GroupedFlowable;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;->c:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;

    return-void
.end method


# virtual methods
.method public final d(Lorg/reactivestreams/Subscriber;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;->c:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->b(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
