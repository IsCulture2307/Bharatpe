.class final Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;
.super Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableDoOnEach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoOnEachSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/BasicFuseableSubscriber<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final f:Lio/reactivex/functions/Consumer;

.field public final g:Lio/reactivex/functions/Consumer;

.field public final h:Lio/reactivex/functions/Action;

.field public final i:Lio/reactivex/functions/Action;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->f:Lio/reactivex/functions/Consumer;

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->g:Lio/reactivex/functions/Consumer;

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->h:Lio/reactivex/functions/Action;

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->i:Lio/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->h:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->d:Z

    iget-object v0, p0, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->a:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->i:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 6

    iget-object v0, p0, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->a:Lorg/reactivestreams/Subscriber;

    iget-boolean v1, p0, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->d:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->d:Z

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->g:Lio/reactivex/functions/Consumer;

    invoke-interface {v2, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v2, v4, v1

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v0, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->i:Lio/reactivex/functions/Action;

    invoke-interface {p1}, Lio/reactivex/functions/Action;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->b(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->e:I

    iget-object v1, p0, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->a:Lorg/reactivestreams/Subscriber;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->f:Lio/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->g:Lio/reactivex/functions/Consumer;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->c:Lio/reactivex/internal/fuseable/QueueSubscription;

    invoke-interface {v4}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->i:Lio/reactivex/functions/Action;

    if-eqz v4, :cond_1

    :try_start_1
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->f:Lio/reactivex/functions/Consumer;

    invoke-interface {v6, v4}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v5}, Lio/reactivex/functions/Action;->run()V

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_2
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v0, v4}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object v0, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    instance-of v0, v4, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    check-cast v4, Ljava/lang/Exception;

    throw v4

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_0
    throw v4

    :catchall_2
    move-exception v0

    new-instance v6, Lio/reactivex/exceptions/CompositeException;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object v4, v2, v1

    aput-object v0, v2, v3

    invoke-direct {v6, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    invoke-interface {v5}, Lio/reactivex/functions/Action;->run()V

    throw v0

    :cond_1
    iget v0, p0, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->e:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber;->h:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V

    invoke-interface {v5}, Lio/reactivex/functions/Action;->run()V

    :cond_2
    :goto_1
    return-object v4

    :catchall_3
    move-exception v4

    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    :try_start_5
    invoke-interface {v0, v4}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    sget-object v0, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    instance-of v0, v4, Ljava/lang/Exception;

    if-eqz v0, :cond_3

    check-cast v4, Ljava/lang/Exception;

    throw v4

    :cond_3
    throw v4

    :catchall_4
    move-exception v0

    new-instance v5, Lio/reactivex/exceptions/CompositeException;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object v4, v2, v1

    aput-object v0, v2, v3

    invoke-direct {v5, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    throw v5
.end method
