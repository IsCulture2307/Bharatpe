.class final synthetic Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;",
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


# static fields
.field public static final a:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1;

    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1;->a:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x1

    const-class v2, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    const-string v3, "<init>"

    const-string v4, "<init>(Landroid/view/View;)V"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    new-instance v0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;-><init>(Landroid/view/View;)V

    return-object v0
.end method
