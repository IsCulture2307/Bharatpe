.class public Lcom/android/volley/toolbox/RequestFuture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;",
        "Lcom/android/volley/Response$Listener<",
        "TT;>;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:Lcom/android/volley/VolleyError;


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->a:Z

    iput-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->c:Lcom/android/volley/VolleyError;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->a:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/volley/toolbox/RequestFuture;->isDone()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/volley/toolbox/RequestFuture;->isDone()Z

    move-result p1

    if-nez p1, :cond_2

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    sub-long v0, v2, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->c:Lcom/android/volley/VolleyError;

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/volley/toolbox/RequestFuture;->a:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :try_start_2
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    :cond_4
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->c:Lcom/android/volley/VolleyError;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->c:Lcom/android/volley/VolleyError;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized cancel(Z)Z
    .locals 0

    monitor-enter p0

    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method

.method public final declared-synchronized e(Lcom/android/volley/VolleyError;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->c:Lcom/android/volley/VolleyError;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/RequestFuture;->b(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/RequestFuture;->b(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->c:Lcom/android/volley/VolleyError;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/volley/toolbox/RequestFuture;->isCancelled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :goto_2
    monitor-exit p0

    throw v0
.end method
