.class final Landroidx/compose/material3/DatePickerDefaults$DatePickerTitle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic c:Landroidx/compose/material3/DatePickerDefaults;

.field public final synthetic d:I

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Landroidx/compose/material3/DatePickerDefaults;ILandroidx/compose/ui/Modifier;II)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/DatePickerDefaults$DatePickerTitle$1;->c:Landroidx/compose/material3/DatePickerDefaults;

    iput p2, p0, Landroidx/compose/material3/DatePickerDefaults$DatePickerTitle$1;->d:I

    iput-object p3, p0, Landroidx/compose/material3/DatePickerDefaults$DatePickerTitle$1;->e:Landroidx/compose/ui/Modifier;

    iput p4, p0, Landroidx/compose/material3/DatePickerDefaults$DatePickerTitle$1;->f:I

    iput p5, p0, Landroidx/compose/material3/DatePickerDefaults$DatePickerTitle$1;->g:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Landroidx/compose/material3/DatePickerDefaults$DatePickerTitle$1;->c:Landroidx/compose/material3/DatePickerDefaults;

    iget v1, p0, Landroidx/compose/material3/DatePickerDefaults$DatePickerTitle$1;->d:I

    iget-object v2, p0, Landroidx/compose/material3/DatePickerDefaults$DatePickerTitle$1;->e:Landroidx/compose/ui/Modifier;

    iget p1, p0, Landroidx/compose/material3/DatePickerDefaults$DatePickerTitle$1;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v4

    iget v5, p0, Landroidx/compose/material3/DatePickerDefaults$DatePickerTitle$1;->g:I

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material3/DatePickerDefaults;->b(ILandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
