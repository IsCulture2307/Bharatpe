.class final Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;
.super Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/processors/UnicastProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UnicastQueueSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/reactivex/processors/UnicastProcessor;


# direct methods
.method public constructor <init>(Lio/reactivex/processors/UnicastProcessor;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->a:Lio/reactivex/processors/UnicastProcessor;

    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->a:Lio/reactivex/processors/UnicastProcessor;

    iget-boolean v0, v0, Lio/reactivex/processors/UnicastProcessor;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->a:Lio/reactivex/processors/UnicastProcessor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/processors/UnicastProcessor;->h:Z

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->a:Lio/reactivex/processors/UnicastProcessor;

    iget-object v0, v0, Lio/reactivex/processors/UnicastProcessor;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->a:Lio/reactivex/processors/UnicastProcessor;

    iget-object v0, v0, Lio/reactivex/processors/UnicastProcessor;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->a:Lio/reactivex/processors/UnicastProcessor;

    iget-object v0, v0, Lio/reactivex/processors/UnicastProcessor;->j:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->a:Lio/reactivex/processors/UnicastProcessor;

    iget-object v0, v0, Lio/reactivex/processors/UnicastProcessor;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->a:Lio/reactivex/processors/UnicastProcessor;

    iget-boolean v1, v0, Lio/reactivex/processors/UnicastProcessor;->l:Z

    if-nez v1, :cond_2

    iget-object v0, v0, Lio/reactivex/processors/UnicastProcessor;->b:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    :cond_2
    return-void
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->a:Lio/reactivex/processors/UnicastProcessor;

    iget-object v0, v0, Lio/reactivex/processors/UnicastProcessor;->b:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->a:Lio/reactivex/processors/UnicastProcessor;

    iget-object v0, v0, Lio/reactivex/processors/UnicastProcessor;->b:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->a:Lio/reactivex/processors/UnicastProcessor;

    iget-object v0, v0, Lio/reactivex/processors/UnicastProcessor;->b:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final request(J)V
    .locals 2

    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->a:Lio/reactivex/processors/UnicastProcessor;

    iget-object v1, v0, Lio/reactivex/processors/UnicastProcessor;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {v0}, Lio/reactivex/processors/UnicastProcessor;->h()V

    :cond_0
    return-void
.end method

.method public final requestFusion(I)I
    .locals 2

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;->a:Lio/reactivex/processors/UnicastProcessor;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lio/reactivex/processors/UnicastProcessor;->l:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
