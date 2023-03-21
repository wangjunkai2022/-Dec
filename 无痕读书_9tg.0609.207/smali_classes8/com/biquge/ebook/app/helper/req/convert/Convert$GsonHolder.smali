.class public Lcom/biquge/ebook/app/helper/req/convert/Convert$GsonHolder;
.super Ljava/lang/Object;
.source "Convert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/helper/req/convert/Convert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GsonHolder"
.end annotation


# static fields
.field public static final gson:Lcom/google/gson/Gson;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/biquge/ebook/app/helper/req/convert/Convert$GsonHolder;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/helper/req/convert/Convert$GsonHolder;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method
