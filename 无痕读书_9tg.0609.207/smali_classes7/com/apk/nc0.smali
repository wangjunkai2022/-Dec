.class public final Lcom/apk/nc0;
.super Ljava/lang/Object;
.source "Unit.kt"


# static fields
.field public static final do:Lcom/apk/nc0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/nc0;

    invoke-direct {v0}, Lcom/apk/nc0;-><init>()V

    sput-object v0, Lcom/apk/nc0;->do:Lcom/apk/nc0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "kotlin.Unit"

    return-object v0
.end method
