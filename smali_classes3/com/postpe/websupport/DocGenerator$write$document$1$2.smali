.class final Lcom/postpe/websupport/DocGenerator$write$document$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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


# static fields
.field public static final c:Lcom/postpe/websupport/DocGenerator$write$document$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/postpe/websupport/DocGenerator$write$document$1$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    sput-object v0, Lcom/postpe/websupport/DocGenerator$write$document$1$2;->c:Lcom/postpe/websupport/DocGenerator$write$document$1$2;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/postpe/websupport/DocGenerator$write$document$1$2$1;->c:Lcom/postpe/websupport/DocGenerator$write$document$1$2$1;

    const/16 v1, 0xe

    const-string v2, "footer-btn"

    invoke-static {v2, v0, v1}, Lorg/celtric/kotlin/html/DivKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Lorg/celtric/kotlin/html/BlockElement;

    move-result-object v0

    return-object v0
.end method
