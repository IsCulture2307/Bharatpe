.class public final Lcom/google/zxing/InvertedLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/zxing/LuminanceSource;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 2

    iget v0, p1, Lcom/google/zxing/LuminanceSource;->a:I

    iget v1, p1, Lcom/google/zxing/LuminanceSource;->b:I

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    iput-object p1, p0, Lcom/google/zxing/InvertedLuminanceSource;->c:Lcom/google/zxing/LuminanceSource;

    return-void
.end method


# virtual methods
.method public final a(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 2

    new-instance v0, Lcom/google/zxing/InvertedLuminanceSource;

    iget-object v1, p0, Lcom/google/zxing/InvertedLuminanceSource;->c:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/zxing/LuminanceSource;->a(IIII)Lcom/google/zxing/LuminanceSource;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/zxing/InvertedLuminanceSource;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public final b()[B
    .locals 5

    iget-object v0, p0, Lcom/google/zxing/InvertedLuminanceSource;->c:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->b()[B

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/LuminanceSource;->a:I

    iget v2, p0, Lcom/google/zxing/LuminanceSource;->b:I

    mul-int/2addr v1, v2

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    rsub-int v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final c(I[B)[B
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/InvertedLuminanceSource;->c:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/LuminanceSource;->c(I[B)[B

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Lcom/google/zxing/LuminanceSource;->a:I

    if-ge p2, v0, :cond_0

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/InvertedLuminanceSource;->c:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->d()Z

    move-result v0

    return v0
.end method

.method public final e()Lcom/google/zxing/LuminanceSource;
    .locals 2

    new-instance v0, Lcom/google/zxing/InvertedLuminanceSource;

    iget-object v1, p0, Lcom/google/zxing/InvertedLuminanceSource;->c:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->e()Lcom/google/zxing/LuminanceSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/InvertedLuminanceSource;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method
