.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 5

    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "checkedAdd"

    invoke-static {v1, p0, p1, v0}, Lcom/google/common/math/MathPreconditions;->a(Ljava/lang/String;IIZ)V

    return v2
.end method

.method public static b(I)I
    .locals 6

    int-to-long v0, p0

    const/4 v2, 0x3

    int-to-long v3, v2

    mul-long/2addr v0, v3

    long-to-int v3, v0

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "checkedMultiply"

    invoke-static {v1, p0, v2, v0}, Lcom/google/common/math/MathPreconditions;->a(Ljava/lang/String;IIZ)V

    return v3
.end method

.method public static c(IILjava/math/RoundingMode;)I
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_7

    div-int v0, p0, p1

    mul-int v1, p1, v0

    sub-int v1, p0, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    xor-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1f

    const/4 v2, 0x1

    or-int/2addr p0, v2

    sget-object v3, Lcom/google/common/math/IntMath$1;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p1, v1

    sub-int/2addr v1, p1

    if-nez v1, :cond_3

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, p1, :cond_4

    sget-object p1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    const/4 v1, 0x0

    if-ne p2, p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    and-int/2addr p1, v2

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_3
    if-lez v1, :cond_5

    goto :goto_2

    :pswitch_1
    if-lez p0, :cond_5

    goto :goto_2

    :pswitch_2
    if-gez p0, :cond_5

    :cond_4
    :goto_2
    :pswitch_3
    add-int/2addr v0, p0

    goto :goto_3

    :pswitch_4
    if-nez v1, :cond_6

    :cond_5
    :goto_3
    :pswitch_5
    return v0

    :cond_6
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "/ by zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static d(ILjava/math/RoundingMode;)I
    .locals 3

    if-lez p0, :cond_3

    sget-object v0, Lcom/google/common/math/IntMath$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    const v0, -0x4afb0ccd

    ushr-int/2addr v0, p1

    rsub-int/lit8 p1, p1, 0x1f

    sub-int/2addr v0, p0

    not-int p0, v0

    not-int p0, p0

    ushr-int/lit8 p0, p0, 0x1f

    add-int/2addr p1, p0

    return p1

    :pswitch_1
    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    return p0

    :pswitch_2
    const/4 p1, 0x0

    if-lez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    add-int/lit8 v2, p0, -0x1

    and-int/2addr v2, p0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    and-int p1, v1, v0

    if-eqz p1, :cond_2

    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1f

    return p0

    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "x ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") must be > 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
