.class public final Lcom/google/android/gms/internal/measurement/zzf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzbb;

.field public final b:Lcom/google/android/gms/internal/measurement/zzh;

.field public final c:Lcom/google/android/gms/internal/measurement/zzh;

.field public final d:Lcom/google/android/gms/internal/measurement/zzl;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzf;->a:Lcom/google/android/gms/internal/measurement/zzbb;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzh;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzh;-><init>(Lcom/google/android/gms/internal/measurement/zzh;Lcom/google/android/gms/internal/measurement/zzbb;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzf;->c:Lcom/google/android/gms/internal/measurement/zzh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzh;->d()Lcom/google/android/gms/internal/measurement/zzh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzf;->b:Lcom/google/android/gms/internal/measurement/zzh;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzf;->d:Lcom/google/android/gms/internal/measurement/zzl;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzz;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzz;-><init>(Lcom/google/android/gms/internal/measurement/zzl;)V

    const-string v3, "require"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzh;->g(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzaq;)V

    new-instance v2, Lcom/google/android/gms/internal/measurement/zze;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zze;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzl;->a:Ljava/util/HashMap;

    const-string v3, "internal.platform"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzai;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    const-string v2, "runtime.counter"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzh;->g(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzaq;)V

    return-void
.end method


# virtual methods
.method public final varargs a(Lcom/google/android/gms/internal/measurement/zzh;[Lcom/google/android/gms/internal/measurement/zzgc$zzd;)Lcom/google/android/gms/internal/measurement/zzaq;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->b0:Lcom/google/android/gms/internal/measurement/zzax;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzj;->a(Lcom/google/android/gms/internal/measurement/zzgc$zzd;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzf;->c:Lcom/google/android/gms/internal/measurement/zzh;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzg;->g(Lcom/google/android/gms/internal/measurement/zzh;)V

    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/zzat;

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/zzar;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzf;->a:Lcom/google/android/gms/internal/measurement/zzbb;

    invoke-virtual {v3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzbb;->a(Lcom/google/android/gms/internal/measurement/zzh;Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
