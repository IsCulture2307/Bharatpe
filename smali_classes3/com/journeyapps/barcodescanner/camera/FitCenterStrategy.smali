.class public Lcom/journeyapps/barcodescanner/camera/FitCenterStrategy;
.super Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.source "SourceFile"


# virtual methods
.method public final b(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)F
    .locals 8

    iget v0, p1, Lcom/journeyapps/barcodescanner/Size;->a:I

    if-lez v0, :cond_2

    iget v0, p1, Lcom/journeyapps/barcodescanner/Size;->b:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->g(Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    iget v1, v0, Lcom/journeyapps/barcodescanner/Size;->a:I

    int-to-float v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->a:I

    int-to-float p1, p1

    div-float/2addr v2, p1

    cmpl-float p1, v2, v3

    if-lez p1, :cond_1

    div-float p1, v3, v2

    float-to-double v4, p1

    const-wide v6, 0x3ff199999999999aL    # 1.1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    :cond_1
    iget p1, p2, Lcom/journeyapps/barcodescanner/Size;->a:I

    int-to-float p1, p1

    mul-float/2addr p1, v3

    int-to-float v1, v1

    div-float/2addr p1, v1

    iget p2, p2, Lcom/journeyapps/barcodescanner/Size;->b:I

    int-to-float p2, p2

    mul-float/2addr p2, v3

    iget v0, v0, Lcom/journeyapps/barcodescanner/Size;->b:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    mul-float/2addr p2, p1

    div-float/2addr v3, p2

    div-float/2addr v3, p2

    div-float/2addr v3, p2

    mul-float/2addr v3, v2

    return v3

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->g(Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/Size;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/Size;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/journeyapps/barcodescanner/Size;->toString()Ljava/lang/String;

    iget p1, v0, Lcom/journeyapps/barcodescanner/Size;->a:I

    iget v1, p2, Lcom/journeyapps/barcodescanner/Size;->a:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    iget v0, v0, Lcom/journeyapps/barcodescanner/Size;->b:I

    iget p2, p2, Lcom/journeyapps/barcodescanner/Size;->b:I

    sub-int p2, v0, p2

    div-int/lit8 p2, p2, 0x2

    new-instance v2, Landroid/graphics/Rect;

    neg-int v3, v1

    neg-int v4, p2

    sub-int/2addr p1, v1

    sub-int/2addr v0, p2

    invoke-direct {v2, v3, v4, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method
