.class public Landroidx/core/provider/FontsContractCompat$FontInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontInfo"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$FontInfo;->a:Landroid/net/Uri;

    iput p2, p0, Landroidx/core/provider/FontsContractCompat$FontInfo;->b:I

    iput p3, p0, Landroidx/core/provider/FontsContractCompat$FontInfo;->c:I

    iput-boolean p4, p0, Landroidx/core/provider/FontsContractCompat$FontInfo;->d:Z

    iput p5, p0, Landroidx/core/provider/FontsContractCompat$FontInfo;->e:I

    return-void
.end method
