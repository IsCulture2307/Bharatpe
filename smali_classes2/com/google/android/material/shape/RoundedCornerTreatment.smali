.class public Lcom/google/android/material/shape/RoundedCornerTreatment;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "SourceFile"


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;->a:F

    return-void
.end method


# virtual methods
.method public final a(FFLcom/google/android/material/shape/ShapePath;)V
    .locals 7

    const/high16 v6, 0x42b40000    # 90.0f

    mul-float v0, p2, p1

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p3, v2, v0, v3, v1}, Lcom/google/android/material/shape/ShapePath;->f(FFFF)V

    const/4 v1, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    mul-float v4, p2, p1

    const/high16 v5, 0x43340000    # 180.0f

    move-object v0, p3

    move v3, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/shape/ShapePath;->a(FFFFFF)V

    return-void
.end method
