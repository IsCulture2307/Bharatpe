.class final Landroidx/camera/core/AndroidImageProxy$PlaneProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageProxy$PlaneProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/AndroidImageProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaneProxy"
.end annotation


# instance fields
.field public final a:Landroid/media/Image$Plane;


# direct methods
.method public constructor <init>(Landroid/media/Image$Plane;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/AndroidImageProxy$PlaneProxy;->a:Landroid/media/Image$Plane;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/AndroidImageProxy$PlaneProxy;->a:Landroid/media/Image$Plane;

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/AndroidImageProxy$PlaneProxy;->a:Landroid/media/Image$Plane;

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0

    return v0
.end method

.method public final getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/AndroidImageProxy$PlaneProxy;->a:Landroid/media/Image$Plane;

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
