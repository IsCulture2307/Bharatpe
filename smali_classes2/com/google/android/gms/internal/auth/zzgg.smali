.class final Lcom/google/android/gms/internal/auth/zzgg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzft;


# instance fields
.field public final a:Lcom/google/android/gms/internal/auth/zzfw;

.field public final b:[Ljava/lang/Object;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/zzhr;[Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzgg;->a:Lcom/google/android/gms/internal/auth/zzfw;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzgg;->b:[Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const v0, 0xd800

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzgg;->c:I

    return-void

    :cond_0
    and-int/lit16 p1, p1, 0x1fff

    const/4 v1, 0x1

    const/16 v2, 0xd

    :goto_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v0, :cond_1

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v2

    or-int/2addr p1, v1

    add-int/lit8 v2, v2, 0xd

    move v1, v3

    goto :goto_0

    :cond_1
    shl-int p2, v1, v2

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzgg;->c:I

    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method public final j()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/auth/zzfw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->a:Lcom/google/android/gms/internal/auth/zzfw;

    return-object v0
.end method
