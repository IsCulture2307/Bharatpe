.class public enum Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/InAppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;

.field public static final enum MINI:Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;

.field public static final enum TAKEOVER:Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;

.field public static final enum UNKNOWN:Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type$1;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;-><init>(Ljava/lang/String;ILcom/mixpanel/android/mpmetrics/InAppNotification$1;)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;->UNKNOWN:Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;

    new-instance v1, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type$2;

    const-string v4, "MINI"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;-><init>(Ljava/lang/String;ILcom/mixpanel/android/mpmetrics/InAppNotification$1;)V

    sput-object v1, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;->MINI:Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;

    new-instance v4, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type$3;

    const-string v6, "TAKEOVER"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v3}, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;-><init>(Ljava/lang/String;ILcom/mixpanel/android/mpmetrics/InAppNotification$1;)V

    sput-object v4, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;->TAKEOVER:Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    sput-object v3, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;->$VALUES:[Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/mixpanel/android/mpmetrics/InAppNotification$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;
    .locals 1

    const-class v0, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;

    return-object p0
.end method

.method public static values()[Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;
    .locals 1

    sget-object v0, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;->$VALUES:[Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;

    invoke-virtual {v0}, [Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;

    return-object v0
.end method
