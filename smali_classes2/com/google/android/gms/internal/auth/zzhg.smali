.class final Lcom/google/android/gms/internal/auth/zzhg;
.super Lcom/google/android/gms/internal/auth/zzhh;
.source "SourceFile"


# virtual methods
.method public final a(JLjava/lang/Object;)D
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzhh;->j(JLjava/lang/Object;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final b(JLjava/lang/Object;)F
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzhh;->i(JLjava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/Object;JZ)V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/auth/zzhi;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/auth/zzhi;->d(Ljava/lang/Object;JZ)V

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/auth/zzhi;->e(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final d(Ljava/lang/Object;JD)V
    .locals 6

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/zzhh;->n(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final e(Ljava/lang/Object;JF)V
    .locals 0

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/google/android/gms/internal/auth/zzhh;->m(IJLjava/lang/Object;)V

    return-void
.end method

.method public final f(JLjava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/auth/zzhi;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzhi;->k(JLjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzhi;->l(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method
