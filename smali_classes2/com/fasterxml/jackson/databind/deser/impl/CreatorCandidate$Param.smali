.class public final Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Param"
.end annotation


# instance fields
.field public final annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

.field public final injection:Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

.field public final propDef:Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;->annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;->propDef:Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;->injection:Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    return-void
.end method
