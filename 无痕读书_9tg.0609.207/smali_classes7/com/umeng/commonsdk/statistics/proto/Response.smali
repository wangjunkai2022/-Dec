.class public Lcom/umeng/commonsdk/statistics/proto/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Lcom/umeng/analytics/pro/at;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/proto/Response$c;,
        Lcom/umeng/commonsdk/statistics/proto/Response$d;,
        Lcom/umeng/commonsdk/statistics/proto/Response$a;,
        Lcom/umeng/commonsdk/statistics/proto/Response$b;,
        Lcom/umeng/commonsdk/statistics/proto/Response$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/analytics/pro/at<",
        "Lcom/umeng/commonsdk/statistics/proto/Response;",
        "Lcom/umeng/commonsdk/statistics/proto/Response$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final IMPRINT_FIELD_DESC:Lcom/umeng/analytics/pro/bn;

.field public static final MSG_FIELD_DESC:Lcom/umeng/analytics/pro/bn;

.field public static final RESP_CODE_FIELD_DESC:Lcom/umeng/analytics/pro/bn;

.field public static final STRUCT_DESC:Lcom/umeng/analytics/pro/bx;

.field public static final __RESP_CODE_ISSET_ID:I = 0x0

.field public static final metaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/commonsdk/statistics/proto/Response$e;",
            "Lcom/umeng/analytics/pro/bf;",
            ">;"
        }
    .end annotation
.end field

.field public static final schemes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/analytics/pro/ca;",
            ">;",
            "Lcom/umeng/analytics/pro/cb;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J = -0x3f22482b0751777fL


# instance fields
.field public __isset_bitfield:B

.field public imprint:Lcom/umeng/commonsdk/statistics/proto/d;

.field public msg:Ljava/lang/String;

.field public optionals:[Lcom/umeng/commonsdk/statistics/proto/Response$e;

.field public resp_code:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/bx;

    const-string v1, "Response"

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->STRUCT_DESC:Lcom/umeng/analytics/pro/bx;

    .line 2
    new-instance v0, Lcom/umeng/analytics/pro/bn;

    const-string v1, "resp_code"

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->RESP_CODE_FIELD_DESC:Lcom/umeng/analytics/pro/bn;

    .line 3
    new-instance v0, Lcom/umeng/analytics/pro/bn;

    const-string v4, "msg"

    const/16 v5, 0xb

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->MSG_FIELD_DESC:Lcom/umeng/analytics/pro/bn;

    .line 4
    new-instance v0, Lcom/umeng/analytics/pro/bn;

    const-string v7, "imprint"

    const/16 v8, 0xc

    const/4 v9, 0x3

    invoke-direct {v0, v7, v8, v9}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->IMPRINT_FIELD_DESC:Lcom/umeng/analytics/pro/bn;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->schemes:Ljava/util/Map;

    .line 6
    const-class v9, Lcom/umeng/analytics/pro/cc;

    new-instance v10, Lcom/umeng/commonsdk/statistics/proto/Response$b;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/umeng/commonsdk/statistics/proto/Response$b;-><init>(Lcom/umeng/commonsdk/statistics/proto/Response$1;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->schemes:Ljava/util/Map;

    const-class v9, Lcom/umeng/analytics/pro/cd;

    new-instance v10, Lcom/umeng/commonsdk/statistics/proto/Response$d;

    invoke-direct {v10, v11}, Lcom/umeng/commonsdk/statistics/proto/Response$d;-><init>(Lcom/umeng/commonsdk/statistics/proto/Response$1;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/util/EnumMap;

    const-class v9, Lcom/umeng/commonsdk/statistics/proto/Response$e;

    invoke-direct {v0, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 9
    sget-object v9, Lcom/umeng/commonsdk/statistics/proto/Response$e;->a:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    new-instance v10, Lcom/umeng/analytics/pro/bf;

    new-instance v11, Lcom/umeng/analytics/pro/bg;

    invoke-direct {v11, v2}, Lcom/umeng/analytics/pro/bg;-><init>(B)V

    invoke-direct {v10, v1, v3, v11}, Lcom/umeng/analytics/pro/bf;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bg;)V

    invoke-virtual {v0, v9, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/Response$e;->b:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    new-instance v2, Lcom/umeng/analytics/pro/bf;

    new-instance v3, Lcom/umeng/analytics/pro/bg;

    invoke-direct {v3, v5}, Lcom/umeng/analytics/pro/bg;-><init>(B)V

    invoke-direct {v2, v4, v6, v3}, Lcom/umeng/analytics/pro/bf;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bg;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/Response$e;->c:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    new-instance v2, Lcom/umeng/analytics/pro/bf;

    new-instance v3, Lcom/umeng/analytics/pro/bk;

    const-class v4, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v3, v8, v4}, Lcom/umeng/analytics/pro/bk;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v7, v6, v3}, Lcom/umeng/analytics/pro/bf;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bg;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->metaDataMap:Ljava/util/Map;

    .line 13
    const-class v1, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/umeng/commonsdk/statistics/proto/Response$e;

    .line 3
    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/Response$e;->b:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    aput-object v2, v1, v0

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response$e;->c:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->optionals:[Lcom/umeng/commonsdk/statistics/proto/Response$e;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/Response;-><init>()V

    .line 5
    iput p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/Response;->setResp_codeIsSet(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/proto/Response;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/umeng/commonsdk/statistics/proto/Response$e;

    .line 9
    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/Response$e;->b:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    aput-object v2, v1, v0

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response$e;->c:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->optionals:[Lcom/umeng/commonsdk/statistics/proto/Response$e;

    .line 10
    iget-byte v0, p1, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    .line 11
    iget v0, p1, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    iput v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    .line 12
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetMsg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetImprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/d;

    iget-object p1, p1, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/statistics/proto/d;-><init>(Lcom/umeng/commonsdk/statistics/proto/d;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    :cond_1
    return-void
.end method

.method public static synthetic access$300()Lcom/umeng/analytics/pro/bx;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->STRUCT_DESC:Lcom/umeng/analytics/pro/bx;

    return-object v0
.end method

.method public static synthetic access$400()Lcom/umeng/analytics/pro/bn;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->RESP_CODE_FIELD_DESC:Lcom/umeng/analytics/pro/bn;

    return-object v0
.end method

.method public static synthetic access$500()Lcom/umeng/analytics/pro/bn;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->MSG_FIELD_DESC:Lcom/umeng/analytics/pro/bn;

    return-object v0
.end method

.method public static synthetic access$600()Lcom/umeng/analytics/pro/bn;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->IMPRINT_FIELD_DESC:Lcom/umeng/analytics/pro/bn;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    .line 2
    new-instance v0, Lcom/umeng/analytics/pro/bm;

    new-instance v1, Lcom/umeng/analytics/pro/ce;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/ce;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bm;-><init>(Lcom/umeng/analytics/pro/cg;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->read(Lcom/umeng/analytics/pro/bs;)V
    :try_end_0
    .catch Lcom/umeng/analytics/pro/az; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/pro/bm;

    new-instance v1, Lcom/umeng/analytics/pro/ce;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/ce;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bm;-><init>(Lcom/umeng/analytics/pro/cg;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->write(Lcom/umeng/analytics/pro/bs;)V
    :try_end_0
    .catch Lcom/umeng/analytics/pro/az; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->setResp_codeIsSet(Z)V

    .line 2
    iput v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    return-void
.end method

.method public bridge synthetic deepCopy()Lcom/umeng/analytics/pro/at;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/Response;->deepCopy()Lcom/umeng/commonsdk/statistics/proto/Response;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lcom/umeng/commonsdk/statistics/proto/Response;
    .locals 1

    .line 2
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/proto/Response;-><init>(Lcom/umeng/commonsdk/statistics/proto/Response;)V

    return-object v0
.end method

.method public bridge synthetic fieldForId(I)Lcom/umeng/analytics/pro/ba;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/Response;->fieldForId(I)Lcom/umeng/commonsdk/statistics/proto/Response$e;

    move-result-object p1

    return-object p1
.end method

.method public fieldForId(I)Lcom/umeng/commonsdk/statistics/proto/Response$e;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/proto/Response$e;->a(I)Lcom/umeng/commonsdk/statistics/proto/Response$e;

    move-result-object p1

    return-object p1
.end method

.method public getImprint()Lcom/umeng/commonsdk/statistics/proto/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResp_code()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    return v0
.end method

.method public isSetImprint()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetMsg()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetResp_code()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/aq;->a(BI)Z

    move-result v0

    return v0
.end method

.method public read(Lcom/umeng/analytics/pro/bs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->schemes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/cb;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/cb;->b()Lcom/umeng/analytics/pro/ca;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/ca;->b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V

    return-void
.end method

.method public setImprint(Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/Response;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    return-object p0
.end method

.method public setImprintIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    :cond_0
    return-void
.end method

.method public setMsg(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/Response;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public setMsgIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setResp_code(I)Lcom/umeng/commonsdk/statistics/proto/Response;
    .locals 0

    .line 1
    iput p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/Response;->setResp_codeIsSet(Z)V

    return-object p0
.end method

.method public setResp_codeIsSet(Z)V
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/pro/aq;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "resp_code:"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetMsg()Z

    move-result v1

    const-string v2, "null"

    const-string v3, ", "

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "msg:"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetImprint()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "imprint:"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    if-nez v1, :cond_2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    const-string v1, ")"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsetImprint()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    return-void
.end method

.method public unsetMsg()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    return-void
.end method

.method public unsetResp_code()V
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/aq;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    return-void
.end method

.method public validate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/d;->l()V

    :cond_0
    return-void
.end method

.method public write(Lcom/umeng/analytics/pro/bs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->schemes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/cb;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/cb;->b()Lcom/umeng/analytics/pro/ca;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/ca;->a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V

    return-void
.end method
