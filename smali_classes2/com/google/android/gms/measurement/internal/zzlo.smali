.class final Lcom/google/android/gms/measurement/internal/zzlo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzo;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzld;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzld;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlo;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlo;->b:Lcom/google/android/gms/measurement/internal/zzo;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlo;->c:Lcom/google/android/gms/measurement/internal/zzld;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlo;->a:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlo;->c:Lcom/google/android/gms/measurement/internal/zzld;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzld;->d()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->v()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zziq$zza;->zzb:Lcom/google/android/gms/measurement/internal/zziq$zza;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zziq;->i(Lcom/google/android/gms/measurement/internal/zziq$zza;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlo;->c:Lcom/google/android/gms/measurement/internal/zzld;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzld;->n()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfz;->k:Lcom/google/android/gms/measurement/internal/zzgb;

    const-string v2, "Analytics storage consent denied; will not get app instance id"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlo;->c:Lcom/google/android/gms/measurement/internal/zzld;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzld;->h()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzjc;->P(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlo;->c:Lcom/google/android/gms/measurement/internal/zzld;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzld;->d()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->h:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgu;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlo;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlo;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlo;->c:Lcom/google/android/gms/measurement/internal/zzld;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzld;->d:Lcom/google/android/gms/measurement/internal/zzfs;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzld;->n()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfz;->f:Lcom/google/android/gms/measurement/internal/zzgb;

    const-string v2, "Failed to get app instance id"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlo;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlo;->b:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlo;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlo;->b:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-interface {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfs;->n0(Lcom/google/android/gms/measurement/internal/zzo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlo;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlo;->c:Lcom/google/android/gms/measurement/internal/zzld;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzld;->h()Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzjc;->P(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlo;->c:Lcom/google/android/gms/measurement/internal/zzld;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzld;->d()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->h:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzgu;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlo;->c:Lcom/google/android/gms/measurement/internal/zzld;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzld;->Y()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlo;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_6
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlo;->c:Lcom/google/android/gms/measurement/internal/zzld;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzld;->n()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfz;->f:Lcom/google/android/gms/measurement/internal/zzgb;

    const-string v3, "Failed to get app instance id"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzgb;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlo;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlo;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :goto_3
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1
.end method
