.class public Lcom/biquge/ebook/app/ui/activity/DeviceActivity$do;
.super Ljava/lang/Object;
.source "DeviceActivity.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/SwitchButton$new;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/DeviceActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/DeviceActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/biquge/ebook/app/widget/SwitchButton;Z)V
    .locals 1

    .line 1
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_OPEN_CHARLES_KEY"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-eqz p2, :cond_0

    const-string p1, "\u6253\u5f00\u5f00\u5173\u9700\u8981\u6740\u6389\u8fdb\u7a0b\u91cd\u542f"

    .line 2
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
