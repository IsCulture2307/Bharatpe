.class final Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;
.super Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Landroidx/camera/core/impl/Timebase;

.field public d:Landroid/util/Size;

.field public e:Ljava/lang/Integer;

.field public f:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Integer;


# virtual methods
.method public final a()Landroidx/camera/video/internal/encoder/VideoEncoderConfig;
    .locals 12

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " mimeType"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->b:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const-string v1, " profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->c:Landroidx/camera/core/impl/Timebase;

    if-nez v1, :cond_2

    const-string v1, " inputTimebase"

    invoke-static {v0, v1}, Lcom/paynimo/android/payment/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->d:Landroid/util/Size;

    if-nez v1, :cond_3

    const-string v1, " resolution"

    invoke-static {v0, v1}, Lcom/paynimo/android/payment/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->e:Ljava/lang/Integer;

    if-nez v1, :cond_4

    const-string v1, " colorFormat"

    invoke-static {v0, v1}, Lcom/paynimo/android/payment/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->f:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    if-nez v1, :cond_5

    const-string v1, " dataSpace"

    invoke-static {v0, v1}, Lcom/paynimo/android/payment/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->g:Ljava/lang/Integer;

    if-nez v1, :cond_6

    const-string v1, " frameRate"

    invoke-static {v0, v1}, Lcom/paynimo/android/payment/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->h:Ljava/lang/Integer;

    if-nez v1, :cond_7

    const-string v1, " IFrameInterval"

    invoke-static {v0, v1}, Lcom/paynimo/android/payment/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->i:Ljava/lang/Integer;

    if-nez v1, :cond_8

    const-string v1, " bitrate"

    invoke-static {v0, v1}, Lcom/paynimo/android/payment/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;

    iget-object v3, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->c:Landroidx/camera/core/impl/Timebase;

    iget-object v6, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->d:Landroid/util/Size;

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->f:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/Timebase;Landroid/util/Size;ILandroidx/camera/video/internal/encoder/VideoEncoderDataSpace;III)V

    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method public final c(Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->f:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    return-object p0
.end method

.method public final d(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public final e(Landroidx/camera/core/impl/Timebase;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->c:Landroidx/camera/core/impl/Timebase;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null inputTimebase"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null mimeType"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final h(Landroid/util/Size;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->d:Landroid/util/Size;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null resolution"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
