.class final Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;
.super Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/fuseable/ConditionalSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilterSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/BasicFuseableSubscriber<",
        "TT;TT;>;",
        "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:Lio/reactivex/functions/Predicate;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;->f:Lio/reactivex/functions/Predicate;

    return-void
.end method


# virtual methods
.method public final G(Ljava/lang/Object;)Z
    .locals 3

    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->d:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->e:I

    const/4 v1, 0x1

    iget-object v2, p0, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->a:Lorg/reactivestreams/Subscriber;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-interface {v2, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;->f:Lio/reactivex/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v2, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;->G(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->b:Lorg/reactivestreams/Subscription;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->c:Lio/reactivex/internal/fuseable/QueueSubscription;

    :cond_0
    :goto_0
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber;->f:Lio/reactivex/functions/Predicate;

    invoke-interface {v2, v1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    iget v1, p0, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0
.end method
