.class public Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SetNickNameActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity_ViewBinding;-><init>(Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;

    .line 2
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mNickNameET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {v0}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->do:Lcom/apk/g5;

    if-eqz p1, :cond_0

    const-string v1, "action"

    const-string v2, "modifynickname"

    .line 4
    invoke-static {v1, v2}, Lcom/apk/goto;->native(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "userId"

    .line 6
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apk/v0;->goto()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "nickname"

    .line 7
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ts"

    .line 8
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 9
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 10
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jni/crypt/project/CryptDesManager;->encodeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/apk/w;->final()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/apk/k5;

    invoke-direct {v3, p1, v0}, Lcom/apk/k5;-><init>(Lcom/apk/g5;Ljava/lang/String;)V

    invoke-static {v2, v1, v3}, Lcom/apk/x4;->default(Ljava/lang/String;Ljava/util/Map;Lcom/apk/mx;)V

    :cond_0
    return-void
.end method
