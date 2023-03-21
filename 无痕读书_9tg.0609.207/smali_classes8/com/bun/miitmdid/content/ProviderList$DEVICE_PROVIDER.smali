.class public final enum Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bun/miitmdid/content/ProviderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DEVICE_PROVIDER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum ASUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum BLACKSHARK:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum FREEMEOS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum HUA_WEI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum LENOVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum MEIZU:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum MOTO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum NUBIA:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum ONEPLUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum OPPO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum SAMSUNG:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum SSUIOS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum UNSUPPORT:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum VIVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum XIAOMI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum ZTE:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;


# instance fields
.field public index:I

.field public name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v1, "UNSUPPORT"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "unsupport"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->UNSUPPORT:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v1, "HUA_WEI"

    const/4 v3, 0x1

    const-string v4, "HUAWEI"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->HUA_WEI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v1, "XIAOMI"

    const/4 v4, 0x2

    const-string v5, "Xiaomi"

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->XIAOMI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v1, "VIVO"

    const/4 v5, 0x3

    const-string v6, "vivo"

    invoke-direct {v0, v1, v5, v4, v6}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->VIVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v1, "OPPO"

    const/4 v6, 0x4

    const-string v7, "oppo"

    invoke-direct {v0, v1, v6, v5, v7}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->OPPO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v1, "MOTO"

    const/4 v7, 0x5

    const-string v8, "motorola"

    invoke-direct {v0, v1, v7, v6, v8}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->MOTO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v1, "LENOVO"

    const/4 v8, 0x6

    const-string v9, "lenovo"

    invoke-direct {v0, v1, v8, v7, v9}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->LENOVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v1, "ASUS"

    const/4 v9, 0x7

    const-string v10, "asus"

    invoke-direct {v0, v1, v9, v8, v10}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ASUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v1, "SAMSUNG"

    const/16 v10, 0x8

    const-string v11, "samsung"

    invoke-direct {v0, v1, v10, v9, v11}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->SAMSUNG:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v1, "MEIZU"

    const/16 v11, 0x9

    const-string v12, "meizu"

    invoke-direct {v0, v1, v11, v10, v12}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->MEIZU:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v1, "NUBIA"

    const/16 v12, 0xa

    const-string v13, "nubia"

    invoke-direct {v0, v1, v12, v12, v13}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->NUBIA:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v1, "ZTE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13, v1}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ZTE:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v1, "ONEPLUS"

    const/16 v14, 0xc

    const-string v15, "OnePlus"

    invoke-direct {v0, v1, v14, v14, v15}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ONEPLUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v1, "BLACKSHARK"

    const/16 v15, 0xd

    const-string v14, "blackshark"

    invoke-direct {v0, v1, v15, v15, v14}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->BLACKSHARK:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v1, "FREEMEOS"

    const/16 v14, 0xe

    const/16 v15, 0x1e

    const-string v13, "freemeos"

    invoke-direct {v0, v1, v14, v15, v13}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->FREEMEOS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v1, "SSUIOS"

    const/16 v13, 0xf

    const/16 v15, 0x1f

    const-string v14, "ssui"

    invoke-direct {v0, v1, v13, v15, v14}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->SSUIOS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v1, 0x10

    new-array v1, v1, [Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    sget-object v14, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->UNSUPPORT:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput-object v14, v1, v2

    sget-object v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->HUA_WEI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput-object v2, v1, v3

    sget-object v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->XIAOMI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput-object v2, v1, v4

    sget-object v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->VIVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput-object v2, v1, v5

    sget-object v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->OPPO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput-object v2, v1, v6

    sget-object v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->MOTO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput-object v2, v1, v7

    sget-object v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->LENOVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput-object v2, v1, v8

    sget-object v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ASUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput-object v2, v1, v9

    sget-object v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->SAMSUNG:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput-object v2, v1, v10

    sget-object v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->MEIZU:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput-object v2, v1, v11

    sget-object v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->NUBIA:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput-object v2, v1, v12

    sget-object v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ZTE:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ONEPLUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->BLACKSHARK:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->FREEMEOS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    aput-object v0, v1, v13

    sput-object v1, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->$VALUES:[Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->index:I

    iput-object p4, p0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->UNSUPPORT:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->values()[Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->UNSUPPORT:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;
    .locals 1

    const-class v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    return-object p0
.end method

.method public static values()[Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;
    .locals 1

    sget-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->$VALUES:[Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    invoke-virtual {v0}, [Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    return-object v0
.end method
