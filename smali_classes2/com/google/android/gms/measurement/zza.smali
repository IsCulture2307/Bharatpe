.class final Lcom/google/android/gms/measurement/zza;
.super Lcom/google/android/gms/measurement/AppMeasurement$zza;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/measurement/internal/zzkq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkq;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/AppMeasurement$zza;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/zza;->a:Lcom/google/android/gms/measurement/internal/zzkq;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->a:Lcom/google/android/gms/measurement/internal/zzkq;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzkq;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->a:Lcom/google/android/gms/measurement/internal/zzkq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzkq;->b(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->a:Lcom/google/android/gms/measurement/internal/zzkq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzkq;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->a:Lcom/google/android/gms/measurement/internal/zzkq;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzkq;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->a:Lcom/google/android/gms/measurement/internal/zzkq;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzkq;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->a:Lcom/google/android/gms/measurement/internal/zzkq;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzkq;->f(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->a:Lcom/google/android/gms/measurement/internal/zzkq;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzkq;->g(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->a:Lcom/google/android/gms/measurement/internal/zzkq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzkq;->h(Landroid/os/Bundle;)V

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->a:Lcom/google/android/gms/measurement/internal/zzkq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzkq;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->a:Lcom/google/android/gms/measurement/internal/zzkq;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkq;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->a:Lcom/google/android/gms/measurement/internal/zzkq;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzkq;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->a:Lcom/google/android/gms/measurement/internal/zzkq;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzkq;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zza;->a:Lcom/google/android/gms/measurement/internal/zzkq;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzkq;->zzh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
