.class public final Landroidx/camera/core/resolutionselector/ResolutionSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;,
        Landroidx/camera/core/resolutionselector/ResolutionSelector$AllowedResolutionMode;
    }
.end annotation


# instance fields
.field public final a:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

.field public final b:Landroidx/camera/core/resolutionselector/ResolutionStrategy;

.field public final c:Landroidx/camera/core/resolutionselector/ResolutionFilter;

.field public final d:I


# direct methods
.method public constructor <init>(Landroidx/camera/core/resolutionselector/AspectRatioStrategy;Landroidx/camera/core/resolutionselector/ResolutionStrategy;Landroidx/camera/core/resolutionselector/ResolutionFilter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/resolutionselector/ResolutionSelector;->a:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    iput-object p2, p0, Landroidx/camera/core/resolutionselector/ResolutionSelector;->b:Landroidx/camera/core/resolutionselector/ResolutionStrategy;

    iput-object p3, p0, Landroidx/camera/core/resolutionselector/ResolutionSelector;->c:Landroidx/camera/core/resolutionselector/ResolutionFilter;

    iput p4, p0, Landroidx/camera/core/resolutionselector/ResolutionSelector;->d:I

    return-void
.end method
