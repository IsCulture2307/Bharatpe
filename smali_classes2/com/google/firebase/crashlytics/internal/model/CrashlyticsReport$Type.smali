.class public final enum Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

.field public static final enum INCOMPLETE:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

.field public static final enum JAVA:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

.field public static final enum NATIVE:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;


# direct methods
.method private static synthetic $values()[Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;
    .locals 3

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;->INCOMPLETE:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;->JAVA:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

    sget-object v2, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;->NATIVE:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

    filled-new-array {v0, v1, v2}, [Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

    const-string v1, "INCOMPLETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;->INCOMPLETE:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

    const-string v1, "JAVA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;->JAVA:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

    const-string v1, "NATIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;->NATIVE:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;->$values()[Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;->$VALUES:[Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;
    .locals 1

    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;
    .locals 1

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;->$VALUES:[Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type;

    return-object v0
.end method
