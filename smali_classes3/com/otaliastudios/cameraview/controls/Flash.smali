.class public final enum Lcom/otaliastudios/cameraview/controls/Flash;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/otaliastudios/cameraview/controls/Control;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/otaliastudios/cameraview/controls/Flash;",
        ">;",
        "Lcom/otaliastudios/cameraview/controls/Control;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/otaliastudios/cameraview/controls/Flash;

.field public static final enum AUTO:Lcom/otaliastudios/cameraview/controls/Flash;

.field static final DEFAULT:Lcom/otaliastudios/cameraview/controls/Flash;

.field public static final enum OFF:Lcom/otaliastudios/cameraview/controls/Flash;

.field public static final enum ON:Lcom/otaliastudios/cameraview/controls/Flash;

.field public static final enum TORCH:Lcom/otaliastudios/cameraview/controls/Flash;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/otaliastudios/cameraview/controls/Flash;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/otaliastudios/cameraview/controls/Flash;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/otaliastudios/cameraview/controls/Flash;->OFF:Lcom/otaliastudios/cameraview/controls/Flash;

    new-instance v1, Lcom/otaliastudios/cameraview/controls/Flash;

    const-string v2, "ON"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/otaliastudios/cameraview/controls/Flash;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/otaliastudios/cameraview/controls/Flash;->ON:Lcom/otaliastudios/cameraview/controls/Flash;

    new-instance v2, Lcom/otaliastudios/cameraview/controls/Flash;

    const-string v3, "AUTO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/otaliastudios/cameraview/controls/Flash;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/otaliastudios/cameraview/controls/Flash;->AUTO:Lcom/otaliastudios/cameraview/controls/Flash;

    new-instance v3, Lcom/otaliastudios/cameraview/controls/Flash;

    const-string v4, "TORCH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/otaliastudios/cameraview/controls/Flash;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/otaliastudios/cameraview/controls/Flash;->TORCH:Lcom/otaliastudios/cameraview/controls/Flash;

    filled-new-array {v0, v1, v2, v3}, [Lcom/otaliastudios/cameraview/controls/Flash;

    move-result-object v1

    sput-object v1, Lcom/otaliastudios/cameraview/controls/Flash;->$VALUES:[Lcom/otaliastudios/cameraview/controls/Flash;

    sput-object v0, Lcom/otaliastudios/cameraview/controls/Flash;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Flash;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/otaliastudios/cameraview/controls/Flash;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/otaliastudios/cameraview/controls/Flash;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/otaliastudios/cameraview/controls/Flash;->values()[Lcom/otaliastudios/cameraview/controls/Flash;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/controls/Flash;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/otaliastudios/cameraview/controls/Flash;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Flash;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/otaliastudios/cameraview/controls/Flash;
    .locals 1

    const-class v0, Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/cameraview/controls/Flash;

    return-object p0
.end method

.method public static values()[Lcom/otaliastudios/cameraview/controls/Flash;
    .locals 1

    sget-object v0, Lcom/otaliastudios/cameraview/controls/Flash;->$VALUES:[Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v0}, [Lcom/otaliastudios/cameraview/controls/Flash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/cameraview/controls/Flash;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/otaliastudios/cameraview/controls/Flash;->value:I

    return v0
.end method
