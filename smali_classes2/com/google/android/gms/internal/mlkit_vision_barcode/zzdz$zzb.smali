.class final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz$zzb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz$zzb;

.field public static final d:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz$zzb;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz$zzb;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz$zzb;

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz$zzb;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz$zzb;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz$zzb;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz$zzb;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz$zzb;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz$zzb;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz$zzb;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz$zzb;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz$zzb;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz$zzb;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz$zzb;->a:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz$zzb;->b:Ljava/lang/Throwable;

    return-void
.end method
