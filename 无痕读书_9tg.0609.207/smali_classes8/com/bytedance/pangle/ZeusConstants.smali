.class public Lcom/bytedance/pangle/ZeusConstants;
.super Ljava/lang/Object;


# static fields
.field public static BASE_LIB_NAME:Ljava/lang/String; = "pangle"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static a:Ljava/lang/String; = "_i"

.field public static b:Ljava/lang/String; = "_d"

.field public static c:Ljava/lang/String; = "_p"

.field public static d:Ljava/lang/String; = "zeus_p"

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/bytedance/pangle/ZeusConstants;->BASE_LIB_NAME:Ljava/lang/String;

    const-string v3, ".servermanager."

    invoke-static {v0, v2, v3}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/pangle/ZeusConstants;->e:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/bytedance/pangle/ZeusConstants;->BASE_LIB_NAME:Ljava/lang/String;

    const-string v2, ".provider.proxy."

    invoke-static {v0, v1, v2}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/pangle/ZeusConstants;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
