.class final Lcom/google/android/gms/tasks/zzz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tasks/zzw;

.field public final synthetic b:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzw;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzz;->a:Lcom/google/android/gms/tasks/zzw;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzz;->b:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzz;->a:Lcom/google/android/gms/tasks/zzw;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzz;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzw;->t(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/zzw;->s(Ljava/lang/Exception;)V

    return-void

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzw;->s(Ljava/lang/Exception;)V

    return-void
.end method
