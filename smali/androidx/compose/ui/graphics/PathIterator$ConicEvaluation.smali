.class public final enum Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/PathIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConicEvaluation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;",
        "",
        "(Ljava/lang/String;I)V",
        "AsConic",
        "AsQuadratics",
        "ui-graphics_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

.field public static final enum AsConic:Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

.field public static final enum AsQuadratics:Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;
    .locals 2

    sget-object v0, Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;->AsConic:Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    sget-object v1, Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;->AsQuadratics:Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    filled-new-array {v0, v1}, [Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    const-string v1, "AsConic"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;->AsConic:Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    new-instance v0, Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    const-string v1, "AsQuadratics"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;->AsQuadratics:Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    invoke-static {}, Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;->$values()[Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;->$VALUES:[Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;
    .locals 1

    const-class v0, Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    return-object p0
.end method

.method public static values()[Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;->$VALUES:[Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    return-object v0
.end method
