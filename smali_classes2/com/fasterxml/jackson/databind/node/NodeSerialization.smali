.class Lcom/fasterxml/jackson/databind/node/NodeSerialization;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/io/Externalizable;


# instance fields
.field public json:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/NodeSerialization;->json:[B

    return-void
.end method

.method private _read(Ljava/io/ObjectInput;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x186a0

    if-gt p2, v1, :cond_0

    new-array v1, p2, [B

    invoke-interface {p1, v1, v0, p2}, Ljava/io/DataInput;->readFully([BII)V

    return-object v1

    :cond_0
    new-instance v2, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    invoke-direct {v2, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(I)V

    :try_start_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->resetAndGetFirstSegment()[B

    move-result-object v1

    :goto_0
    move v3, v0

    :cond_1
    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {p1, v1, v0, v4}, Ljava/io/DataInput;->readFully([BII)V

    sub-int/2addr p2, v4

    add-int/2addr v3, v4

    if-nez p2, :cond_2

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :try_start_1
    array-length v4, v1

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method public static from(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/NodeSerialization;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/fasterxml/jackson/databind/node/NodeSerialization;

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/node/InternalNodeMapper;->valueToBytes(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/NodeSerialization;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to JDK serialize `"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "` value: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/NodeSerialization;->_read(Ljava/io/ObjectInput;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/NodeSerialization;->json:[B

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeSerialization;->json:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeSerialization;->json:[B

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write([B)V

    return-void
.end method
