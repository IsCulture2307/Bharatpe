.class public abstract Landroidx/datastore/preferences/protobuf/ByteString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;,
        Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;,
        Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;,
        Landroidx/datastore/preferences/protobuf/ByteString$Output;,
        Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;,
        Landroidx/datastore/preferences/protobuf/ByteString$AbstractByteIterator;,
        Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;,
        Landroidx/datastore/preferences/protobuf/ByteString$ArraysByteArrayCopier;,
        Landroidx/datastore/preferences/protobuf/ByteString$SystemByteArrayCopier;,
        Landroidx/datastore/preferences/protobuf/ByteString$ByteArrayCopier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CONCATENATE_BY_COPY_SIZE:I = 0x80

.field public static final EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

.field static final MAX_READ_FROM_CHUNK_SIZE:I = 0x2000

.field static final MIN_READ_FROM_CHUNK_SIZE:I = 0x100

.field private static final UNSIGNED_BYTE_MASK:I = 0xff

.field private static final UNSIGNED_LEXICOGRAPHICAL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/datastore/preferences/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final byteArrayCopier:Landroidx/datastore/preferences/protobuf/ByteString$ByteArrayCopier;


# instance fields
.field private hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    sget-object v1, Landroidx/datastore/preferences/protobuf/Internal;->b:[B

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;-><init>([B)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {}, Landroidx/datastore/preferences/protobuf/Android;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/datastore/preferences/protobuf/ByteString$SystemByteArrayCopier;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/ByteString$ArraysByteArrayCopier;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    sput-object v0, Landroidx/datastore/preferences/protobuf/ByteString;->byteArrayCopier:Landroidx/datastore/preferences/protobuf/ByteString$ByteArrayCopier;

    new-instance v0, Landroidx/datastore/preferences/protobuf/ByteString$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/ByteString;->UNSIGNED_LEXICOGRAPHICAL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ByteString;->hash:I

    return-void
.end method

.method public static synthetic access$200(B)I
    .locals 0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->toInt(B)I

    move-result p0

    return p0
.end method

.method private static balancedConcat(Ljava/util/Iterator;I)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Landroidx/datastore/preferences/protobuf/ByteString;",
            ">;I)",
            "Landroidx/datastore/preferences/protobuf/ByteString;"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/ByteString;

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->balancedConcat(Ljava/util/Iterator;I)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v1

    sub-int/2addr p1, v0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/ByteString;->balancedConcat(Ljava/util/Iterator;I)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/datastore/preferences/protobuf/ByteString;->concat(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "length (%s) must be >= 1"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkIndex(II)V
    .locals 3

    add-int/lit8 v0, p0, 0x1

    sub-int v0, p1, v0

    or-int/2addr v0, p0

    if-gez v0, :cond_1

    if-gez p0, :cond_0

    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Index < 0: "

    invoke-static {v0, p0}, La/a/a/e/a/k;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Index > length: "

    const-string v2, ", "

    invoke-static {v1, p0, v2, p1}, Landroidx/compose/animation/b;->l(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static checkRange(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Beginning index larger than ending index: "

    const-string v1, ", "

    invoke-static {v0, p0, v1, p1}, Landroidx/compose/animation/b;->l(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "End index: "

    const-string v1, " >= "

    invoke-static {v0, p1, v1, p2}, Landroidx/compose/animation/b;->l(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Beginning index: "

    const-string v0, " < 0"

    invoke-static {p2, p0, v0}, La/a/a/e/a/k;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public static copyFrom(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroidx/datastore/preferences/protobuf/ByteString;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/ByteString;"
        }
    .end annotation

    .line 11
    instance-of v0, p0, Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    sget-object p0, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    return-object p0

    .line 16
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, v1}, Landroidx/datastore/preferences/protobuf/ByteString;->balancedConcat(Ljava/util/Iterator;I)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static copyFrom(Ljava/lang/String;Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 9
    new-instance v0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static copyFrom(Ljava/lang/String;Ljava/nio/charset/Charset;)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 10
    new-instance v0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 8
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;I)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;I)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 2

    .line 4
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->checkRange(III)I

    .line 5
    new-array p1, p1, [B

    .line 6
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 7
    new-instance p0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object p0
.end method

.method public static copyFrom([B)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 2

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFrom([BII)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static copyFrom([BII)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 2

    add-int v0, p1, p2

    .line 1
    array-length v1, p0

    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/ByteString;->checkRange(III)I

    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    sget-object v1, Landroidx/datastore/preferences/protobuf/ByteString;->byteArrayCopier:Landroidx/datastore/preferences/protobuf/ByteString$ByteArrayCopier;

    invoke-interface {v1, p1, p0, p2}, Landroidx/datastore/preferences/protobuf/ByteString$ByteArrayCopier;->a(I[BI)[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 2

    new-instance v0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    sget-object v1, Landroidx/datastore/preferences/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static newCodedBuilder(I)Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;-><init>(I)V

    return-object v0
.end method

.method public static newOutput()Landroidx/datastore/preferences/protobuf/ByteString$Output;
    .locals 2

    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/ByteString$Output;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ByteString$Output;-><init>(I)V

    return-object v0
.end method

.method public static newOutput(I)Landroidx/datastore/preferences/protobuf/ByteString$Output;
    .locals 1

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/ByteString$Output;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/ByteString$Output;-><init>(I)V

    return-object v0
.end method

.method private static readChunk(Ljava/io/InputStream;I)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p1, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    sub-int v3, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFrom([BII)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static readFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x100

    const/16 v1, 0x2000

    .line 1
    invoke-static {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/ByteString;->readFrom(Ljava/io/InputStream;II)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static readFrom(Ljava/io/InputStream;I)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p1}, Landroidx/datastore/preferences/protobuf/ByteString;->readFrom(Ljava/io/InputStream;II)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static readFrom(Ljava/io/InputStream;II)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_0
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/ByteString;->readChunk(Ljava/io/InputStream;I)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-int/lit8 p1, p1, 0x2

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method

.method private static toInt(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static unsignedLexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Landroidx/datastore/preferences/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/datastore/preferences/protobuf/ByteString;->UNSIGNED_LEXICOGRAPHICAL_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public static wrap(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-static {v1, v2, p0}, Landroidx/datastore/preferences/protobuf/ByteString;->wrap([BII)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/NioByteString;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/NioByteString;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static wrap([B)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 5
    new-instance v0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static wrap([BII)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 6
    new-instance v0, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;

    invoke-direct {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public abstract asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract asReadOnlyByteBufferList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract byteAt(I)B
.end method

.method public final concat(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 7

    const v0, 0x7fffffff

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v1

    if-lt v0, v1, :cond_7

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object p1, p0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x0

    const/16 v2, 0x80

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v2

    add-int v3, v1, v2

    new-array v3, v3, [B

    invoke-virtual {p0, v3, v0, v0, v1}, Landroidx/datastore/preferences/protobuf/ByteString;->copyTo([BIII)V

    invoke-virtual {p1, v3, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/ByteString;->copyTo([BIII)V

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ByteString;->wrap([B)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p1

    goto/16 :goto_2

    :cond_2
    instance-of v3, p0, Landroidx/datastore/preferences/protobuf/RopeByteString;

    if-eqz v3, :cond_5

    move-object v3, p0

    check-cast v3, Landroidx/datastore/preferences/protobuf/RopeByteString;

    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/RopeByteString;->c:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v5

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v5, v3, Landroidx/datastore/preferences/protobuf/RopeByteString;->b:Landroidx/datastore/preferences/protobuf/ByteString;

    if-ge v6, v2, :cond_4

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v2

    add-int v3, v1, v2

    new-array v3, v3, [B

    invoke-virtual {v4, v3, v0, v0, v1}, Landroidx/datastore/preferences/protobuf/ByteString;->copyTo([BIII)V

    invoke-virtual {p1, v3, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/ByteString;->copyTo([BIII)V

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ByteString;->wrap([B)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p1

    new-instance v0, Landroidx/datastore/preferences/protobuf/RopeByteString;

    invoke-direct {v0, v5, p1}, Landroidx/datastore/preferences/protobuf/RopeByteString;-><init>(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ByteString;)V

    :cond_3
    :goto_0
    move-object p1, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ByteString;->getTreeDepth()I

    move-result v0

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ByteString;->getTreeDepth()I

    move-result v2

    if-le v0, v2, :cond_5

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->getTreeDepth()I

    move-result v0

    iget v2, v3, Landroidx/datastore/preferences/protobuf/RopeByteString;->e:I

    if-le v2, v0, :cond_5

    new-instance v0, Landroidx/datastore/preferences/protobuf/RopeByteString;

    invoke-direct {v0, v4, p1}, Landroidx/datastore/preferences/protobuf/RopeByteString;-><init>(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ByteString;)V

    new-instance p1, Landroidx/datastore/preferences/protobuf/RopeByteString;

    invoke-direct {p1, v5, v0}, Landroidx/datastore/preferences/protobuf/RopeByteString;-><init>(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ByteString;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->getTreeDepth()I

    move-result v0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->getTreeDepth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget-object v2, Landroidx/datastore/preferences/protobuf/RopeByteString;->f:[I

    aget v0, v2, v0

    if-lt v1, v0, :cond_6

    new-instance v0, Landroidx/datastore/preferences/protobuf/RopeByteString;

    invoke-direct {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/RopeByteString;-><init>(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ByteString;)V

    goto :goto_0

    :cond_6
    new-instance v0, Landroidx/datastore/preferences/protobuf/RopeByteString$Balancer;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/RopeByteString$Balancer;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/RopeByteString$Balancer;->a(Landroidx/datastore/preferences/protobuf/ByteString;)V

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/RopeByteString$Balancer;->a(Landroidx/datastore/preferences/protobuf/ByteString;)V

    iget-object p1, v0, Landroidx/datastore/preferences/protobuf/RopeByteString$Balancer;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ByteString;

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ByteString;

    new-instance v2, Landroidx/datastore/preferences/protobuf/RopeByteString;

    invoke-direct {v2, v1, v0}, Landroidx/datastore/preferences/protobuf/RopeByteString;-><init>(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ByteString;)V

    move-object v0, v2

    goto :goto_1

    :goto_2
    return-object p1

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ByteString would be too long: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract copyTo(Ljava/nio/ByteBuffer;)V
.end method

.method public copyTo([BI)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Landroidx/datastore/preferences/protobuf/ByteString;->copyTo([BIII)V

    return-void
.end method

.method public final copyTo([BIII)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    add-int v0, p2, p4

    .line 2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v1

    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/ByteString;->checkRange(III)I

    add-int v0, p3, p4

    .line 3
    array-length v1, p1

    invoke-static {p3, v0, v1}, Landroidx/datastore/preferences/protobuf/ByteString;->checkRange(III)I

    if-lez p4, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/ByteString;->copyToInternal([BIII)V

    :cond_0
    return-void
.end method

.method public abstract copyToInternal([BIII)V
.end method

.method public final endsWith(Landroidx/datastore/preferences/protobuf/ByteString;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->substring(I)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getTreeDepth()I
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/ByteString;->hash:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->partialHash(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Landroidx/datastore/preferences/protobuf/ByteString;->hash:I

    :cond_1
    return v0
.end method

.method public abstract internalByteAt(I)B
.end method

.method public abstract isBalanced()Z
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isValidUtf8()Z
.end method

.method public iterator()Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;
    .locals 1

    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/ByteString$1;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/ByteString$1;-><init>(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->iterator()Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract newCodedInput()Landroidx/datastore/preferences/protobuf/CodedInputStream;
.end method

.method public abstract newInput()Ljava/io/InputStream;
.end method

.method public abstract partialHash(III)I
.end method

.method public abstract partialIsValidUtf8(III)I
.end method

.method public final peekCachedHashCode()I
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/ByteString;->hash:I

    return v0
.end method

.method public abstract size()I
.end method

.method public final startsWith(Landroidx/datastore/preferences/protobuf/ByteString;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->substring(II)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final substring(I)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->substring(II)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public abstract substring(II)Landroidx/datastore/preferences/protobuf/ByteString;
.end method

.method public final toByteArray()[B
    .locals 3

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/datastore/preferences/protobuf/Internal;->b:[B

    return-object v0

    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyToInternal([BIII)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<ByteString@%s size=%d>"

    .line 7
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4
    throw v1
.end method

.method public final toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ByteString;->toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public abstract toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public final toStringUtf8()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract writeTo(Landroidx/datastore/preferences/protobuf/ByteOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeTo(Ljava/io/OutputStream;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v1

    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/ByteString;->checkRange(III)I

    if-lez p3, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    :cond_0
    return-void
.end method

.method public abstract writeToInternal(Ljava/io/OutputStream;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeToReverse(Landroidx/datastore/preferences/protobuf/ByteOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
