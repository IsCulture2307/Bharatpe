.class final Lcom/google/android/gms/internal/mlkit_common/zzal;
.super Lcom/google/android/gms/internal/mlkit_common/zzaf;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/mlkit_common/zzaf;


# instance fields
.field public final transient a:[Ljava/lang/Object;

.field public final transient b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzal;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzal;-><init>(I[Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzal;->c:Lcom/google/android/gms/internal/mlkit_common/zzaf;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzaf;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->a:[Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->b:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->b:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzt;->a(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->b:I

    return v0
.end method

.method public final zza([Ljava/lang/Object;I)I
    .locals 2

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->b:I

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->b:I

    return v0
.end method

.method public final zzc()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zze()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzal;->a:[Ljava/lang/Object;

    return-object v0
.end method
