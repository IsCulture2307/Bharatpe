.class public final enum Landroidx/camera/view/PreviewView$ScaleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/PreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/view/PreviewView$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FILL_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FILL_END:Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FILL_START:Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FIT_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FIT_END:Landroidx/camera/view/PreviewView$ScaleType;

.field public static final enum FIT_START:Landroidx/camera/view/PreviewView$ScaleType;


# instance fields
.field private final mId:I


# direct methods
.method private static synthetic $values()[Landroidx/camera/view/PreviewView$ScaleType;
    .locals 6

    sget-object v0, Landroidx/camera/view/PreviewView$ScaleType;->FILL_START:Landroidx/camera/view/PreviewView$ScaleType;

    sget-object v1, Landroidx/camera/view/PreviewView$ScaleType;->FILL_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

    sget-object v2, Landroidx/camera/view/PreviewView$ScaleType;->FILL_END:Landroidx/camera/view/PreviewView$ScaleType;

    sget-object v3, Landroidx/camera/view/PreviewView$ScaleType;->FIT_START:Landroidx/camera/view/PreviewView$ScaleType;

    sget-object v4, Landroidx/camera/view/PreviewView$ScaleType;->FIT_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

    sget-object v5, Landroidx/camera/view/PreviewView$ScaleType;->FIT_END:Landroidx/camera/view/PreviewView$ScaleType;

    filled-new-array/range {v0 .. v5}, [Landroidx/camera/view/PreviewView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v1, "FILL_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/view/PreviewView$ScaleType;->FILL_START:Landroidx/camera/view/PreviewView$ScaleType;

    new-instance v0, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v1, "FILL_CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/view/PreviewView$ScaleType;->FILL_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

    new-instance v0, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v1, "FILL_END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/view/PreviewView$ScaleType;->FILL_END:Landroidx/camera/view/PreviewView$ScaleType;

    new-instance v0, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v1, "FIT_START"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/view/PreviewView$ScaleType;->FIT_START:Landroidx/camera/view/PreviewView$ScaleType;

    new-instance v0, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v1, "FIT_CENTER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/view/PreviewView$ScaleType;->FIT_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

    new-instance v0, Landroidx/camera/view/PreviewView$ScaleType;

    const-string v1, "FIT_END"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/view/PreviewView$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/view/PreviewView$ScaleType;->FIT_END:Landroidx/camera/view/PreviewView$ScaleType;

    invoke-static {}, Landroidx/camera/view/PreviewView$ScaleType;->$values()[Landroidx/camera/view/PreviewView$ScaleType;

    move-result-object v0

    sput-object v0, Landroidx/camera/view/PreviewView$ScaleType;->$VALUES:[Landroidx/camera/view/PreviewView$ScaleType;

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

    iput p3, p0, Landroidx/camera/view/PreviewView$ScaleType;->mId:I

    return-void
.end method

.method public static fromId(I)Landroidx/camera/view/PreviewView$ScaleType;
    .locals 5

    invoke-static {}, Landroidx/camera/view/PreviewView$ScaleType;->values()[Landroidx/camera/view/PreviewView$ScaleType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Landroidx/camera/view/PreviewView$ScaleType;->mId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown scale type id "

    invoke-static {v1, p0}, La/a/a/e/a/k;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/view/PreviewView$ScaleType;
    .locals 1

    const-class v0, Landroidx/camera/view/PreviewView$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/view/PreviewView$ScaleType;

    return-object p0
.end method

.method public static values()[Landroidx/camera/view/PreviewView$ScaleType;
    .locals 1

    sget-object v0, Landroidx/camera/view/PreviewView$ScaleType;->$VALUES:[Landroidx/camera/view/PreviewView$ScaleType;

    invoke-virtual {v0}, [Landroidx/camera/view/PreviewView$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/view/PreviewView$ScaleType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Landroidx/camera/view/PreviewView$ScaleType;->mId:I

    return v0
.end method
