.class final Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber$Iterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Iterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;


# virtual methods
.method public final hasNext()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber$Iterator;->a:Ljava/lang/Object;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber$Iterator;->a:Ljava/lang/Object;

    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber$Iterator;->a:Ljava/lang/Object;

    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber$Iterator;->a:Ljava/lang/Object;

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber$Iterator;->a:Ljava/lang/Object;

    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/internal/util/ExceptionHelper;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_2
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber$Iterator;->a:Ljava/lang/Object;

    throw v1
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
