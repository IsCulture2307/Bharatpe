.class final Lcom/google/firebase/messaging/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/AutoProtoEncoderDoNotUseEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtoEncoderDoNotUseEncoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ObjectEncoder<",
        "Lcom/google/firebase/messaging/ProtoEncoderDoNotUse;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/messaging/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;

.field public static final b:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/messaging/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;

    invoke-direct {v0}, Lcom/google/firebase/messaging/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;->a:Lcom/google/firebase/messaging/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;

    const-string v0, "messagingClientEventExtension"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->c(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;->b:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/firebase/messaging/ProtoEncoderDoNotUse;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/firebase/messaging/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;->b:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/ProtoEncoderDoNotUse;->a()Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->g(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method
