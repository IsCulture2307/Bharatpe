.class final Lcom/google/android/gms/internal/measurement/zzbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzbm;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzh;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbn;->a:Lcom/google/android/gms/internal/measurement/zzh;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbn;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzh;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbn;->a:Lcom/google/android/gms/internal/measurement/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzh;->d()Lcom/google/android/gms/internal/measurement/zzh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzh;->e(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzaq;)V

    return-object v0
.end method
