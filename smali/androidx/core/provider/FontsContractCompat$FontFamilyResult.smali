.class public Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontFamilyResult"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Landroidx/core/provider/FontsContractCompat$FontInfo;


# direct methods
.method public constructor <init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->a:I

    iput-object p2, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->b:[Landroidx/core/provider/FontsContractCompat$FontInfo;

    return-void
.end method
