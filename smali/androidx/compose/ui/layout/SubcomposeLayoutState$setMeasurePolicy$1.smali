.class final Landroidx/compose/ui/layout/SubcomposeLayoutState$setMeasurePolicy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/node/LayoutNode;",
        "Lkotlin/jvm/functions/Function2<",
        "-",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "-",
        "Landroidx/compose/ui/unit/Constraints;",
        "+",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u001d\u0010\u0003\u001a\u0019\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004\u00a2\u0006\u0002\u0008\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/node/LayoutNode;",
        "it",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Lkotlin/ExtensionFunctionType;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic c:Landroidx/compose/ui/layout/SubcomposeLayoutState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$setMeasurePolicy$1;->c:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$setMeasurePolicy$1;->c:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->a()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;

    iget-object v2, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->p:Ljava/lang/String;

    invoke-direct {v1, v0, p2, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/compose/ui/node/LayoutNode;->b(Landroidx/compose/ui/layout/MeasurePolicy;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
