.class public Lcom/google/android/material/shape/TriangleEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "SourceFile"


# virtual methods
.method public final b(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 4

    const/4 v0, 0x0

    mul-float v1, v0, p3

    sub-float v2, p2, v1

    const/high16 v3, -0x80000000

    mul-float/2addr v3, p3

    invoke-virtual {p4, v2, p2, v3}, Lcom/google/android/material/shape/ShapePath;->e(FFF)V

    add-float/2addr p2, v1

    invoke-virtual {p4, p2, p1, v0}, Lcom/google/android/material/shape/ShapePath;->e(FFF)V

    return-void
.end method
