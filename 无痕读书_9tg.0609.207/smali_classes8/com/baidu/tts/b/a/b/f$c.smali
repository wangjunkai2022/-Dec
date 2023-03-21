.class public Lcom/baidu/tts/b/a/b/f$c;
.super Ljava/lang/Object;
.source "OnlineSynthesizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/b/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final synthetic c:Lcom/baidu/tts/b/a/b/f;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/b/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$c;->c:Lcom/baidu/tts/b/a/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/baidu/tts/tools/CommonUtility;->generateSerialNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$c;->a:Ljava/lang/String;

    return-void
.end method
