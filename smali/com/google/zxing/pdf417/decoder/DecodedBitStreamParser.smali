.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field public static final a:[C

.field public static final b:[C

.field public static final c:[Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a:[C

    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->b:[C

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->c:[Ljava/math/BigInteger;

    const/4 v1, 0x0

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    const-wide/16 v1, 0x384

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v0, 0x2

    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->c:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I[I)Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p0, :cond_0

    sub-int v4, p0, v2

    sub-int/2addr v4, v3

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->c:[Ljava/math/BigInteger;

    aget-object v3, v3, v4

    aget v4, p1, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method public static b([IILjava/lang/StringBuilder;)I
    .locals 8

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    aget v4, p0, v1

    if-ge p1, v4, :cond_5

    if-nez v2, :cond_5

    add-int/lit8 v5, p1, 0x1

    aget v6, p0, p1

    const/4 v7, 0x1

    if-ne v5, v4, :cond_1

    move v2, v7

    :cond_1
    const/16 v4, 0x384

    if-ge v6, v4, :cond_2

    aput v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    :goto_1
    move p1, v5

    goto :goto_2

    :cond_2
    if-eq v6, v4, :cond_3

    const/16 v4, 0x385

    if-eq v6, v4, :cond_3

    const/16 v4, 0x3a0

    if-eq v6, v4, :cond_3

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :cond_3
    :pswitch_0
    move v2, v7

    :goto_2
    rem-int/lit8 v4, v3, 0xf

    if-eqz v4, :cond_4

    const/16 v4, 0x386

    if-eq v6, v4, :cond_4

    if-eqz v2, :cond_0

    :cond_4
    if-lez v3, :cond_0

    invoke-static {v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a(I[I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v1

    goto :goto_0

    :cond_5
    return p1

    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static c([IILjava/lang/StringBuilder;)I
    .locals 19

    move-object/from16 v0, p2

    const/4 v1, 0x0

    aget v2, p0, v1

    sub-int v2, v2, p1

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v4, v2, [I

    new-array v2, v2, [I

    move/from16 v5, p1

    move v6, v1

    move v7, v6

    :goto_0
    aget v8, p0, v1

    const/16 v9, 0x391

    const/16 v10, 0x384

    if-ge v5, v8, :cond_3

    if-nez v6, :cond_3

    add-int/lit8 v8, v5, 0x1

    aget v11, p0, v5

    if-ge v11, v10, :cond_0

    div-int/lit8 v5, v11, 0x1e

    aput v5, v4, v7

    add-int/lit8 v5, v7, 0x1

    rem-int/lit8 v11, v11, 0x1e

    aput v11, v4, v5

    add-int/lit8 v7, v7, 0x2

    :goto_1
    move v5, v8

    goto :goto_0

    :cond_0
    if-eq v11, v9, :cond_2

    const/16 v9, 0x3a0

    if-eq v11, v9, :cond_1

    packed-switch v11, :pswitch_data_0

    packed-switch v11, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    add-int/lit8 v5, v7, 0x1

    aput v10, v4, v7

    move v7, v5

    goto :goto_1

    :cond_1
    :pswitch_1
    move v6, v3

    goto :goto_0

    :cond_2
    aput v9, v4, v7

    add-int/lit8 v5, v5, 0x2

    aget v8, p0, v8

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move v8, v1

    move-object v11, v6

    move-object v12, v11

    :goto_2
    if-ge v8, v7, :cond_18

    aget v13, v4, v8

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    sget-object v15, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->c:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    sget-object v16, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->b:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    sget-object v17, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->f:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/16 v18, 0x20

    const/16 v1, 0x1a

    if-eqz v14, :cond_14

    if-eq v14, v3, :cond_11

    const/4 v15, 0x2

    if-eq v14, v15, :cond_e

    const/4 v15, 0x3

    sget-object v16, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a:[C

    const/16 v3, 0x1d

    if-eq v14, v15, :cond_b

    const/4 v15, 0x4

    if-eq v14, v15, :cond_9

    const/4 v1, 0x5

    if-eq v14, v1, :cond_4

    goto :goto_5

    :cond_4
    if-ge v13, v3, :cond_6

    aget-char v18, v16, v13

    :cond_5
    move-object v11, v12

    :goto_3
    :pswitch_2
    move/from16 v1, v18

    goto/16 :goto_7

    :cond_6
    if-eq v13, v3, :cond_8

    if-eq v13, v10, :cond_8

    if-eq v13, v9, :cond_7

    goto :goto_4

    :cond_7
    aget v1, v2, v8

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    move-object v11, v12

    :goto_5
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_8
    :pswitch_3
    move-object v11, v6

    goto :goto_5

    :cond_9
    if-ge v13, v1, :cond_a

    add-int/lit8 v13, v13, 0x41

    int-to-char v1, v13

    move-object v11, v12

    goto/16 :goto_7

    :cond_a
    if-eq v13, v1, :cond_5

    if-eq v13, v10, :cond_8

    goto :goto_4

    :cond_b
    if-ge v13, v3, :cond_c

    aget-char v18, v16, v13

    goto :goto_3

    :cond_c
    if-eq v13, v3, :cond_8

    if-eq v13, v10, :cond_8

    if-eq v13, v9, :cond_d

    goto :goto_5

    :cond_d
    aget v1, v2, v8

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_e
    const/16 v1, 0x19

    if-ge v13, v1, :cond_f

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->b:[C

    aget-char v18, v1, v13

    goto :goto_3

    :cond_f
    if-eq v13, v10, :cond_8

    if-eq v13, v9, :cond_10

    packed-switch v13, :pswitch_data_2

    goto :goto_5

    :pswitch_4
    move-object v12, v11

    move-object/from16 v11, v17

    goto :goto_5

    :pswitch_5
    move-object/from16 v11, v16

    goto :goto_5

    :pswitch_6
    sget-object v11, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->d:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_5

    :cond_10
    aget v1, v2, v8

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_11
    if-ge v13, v1, :cond_12

    add-int/lit8 v13, v13, 0x61

    :goto_6
    int-to-char v1, v13

    goto :goto_7

    :cond_12
    if-eq v13, v10, :cond_8

    if-eq v13, v9, :cond_13

    packed-switch v13, :pswitch_data_3

    goto :goto_5

    :pswitch_7
    move-object v11, v15

    goto :goto_5

    :pswitch_8
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->e:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v12, v11

    move-object v11, v1

    goto :goto_5

    :cond_13
    aget v1, v2, v8

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_14
    if-ge v13, v1, :cond_15

    add-int/lit8 v13, v13, 0x41

    goto :goto_6

    :cond_15
    if-eq v13, v10, :cond_8

    if-eq v13, v9, :cond_16

    packed-switch v13, :pswitch_data_4

    goto :goto_5

    :cond_16
    aget v1, v2, v8

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :goto_7
    if-eqz v1, :cond_17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_17
    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_18
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x19
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method
