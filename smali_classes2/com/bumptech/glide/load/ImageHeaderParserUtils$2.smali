.class Lcom/bumptech/glide/load/ImageHeaderParserUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/ImageHeaderParserUtils$TypeReader;


# instance fields
.field public final synthetic a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$2;->a:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/ImageHeaderParserUtils$2;->a:Ljava/nio/ByteBuffer;

    :try_start_0
    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/ImageHeaderParser;->a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/bumptech/glide/util/ByteBufferUtil;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/bumptech/glide/util/ByteBufferUtil;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    throw p1
.end method
