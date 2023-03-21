.class public Lcom/apk/ms;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final do:Lcom/apk/ls;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/apk/ls$if;

    invoke-direct {v0}, Lcom/apk/ls$if;-><init>()V

    const-string v1, "https://toblog.ctobsnssdk.com/service/2/device_register_only/"

    .line 2
    iput-object v1, v0, Lcom/apk/ls$if;->do:Ljava/lang/String;

    const-string v1, "https://toblog.ctobsnssdk.com/service/2/app_alert_check/"

    .line 3
    iput-object v1, v0, Lcom/apk/ls$if;->if:Ljava/lang/String;

    const-string v1, "https://toblog.ctobsnssdk.com/service/2/app_log/"

    const-string v2, "https://tobapplog.ctobsnssdk.com/service/2/app_log/"

    .line 4
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lcom/apk/ls$if;->for:[Ljava/lang/String;

    const-string v1, "https://toblog.ctobsnssdk.com/service/2/log_settings/"

    .line 6
    iput-object v1, v0, Lcom/apk/ls$if;->new:Ljava/lang/String;

    const-string v1, "https://toblog.ctobsnssdk.com/service/2/abtest_config/"

    .line 7
    iput-object v1, v0, Lcom/apk/ls$if;->try:Ljava/lang/String;

    const-string v1, "https://success.ctobsnssdk.com/service/2/app_log/"

    .line 8
    iput-object v1, v0, Lcom/apk/ls$if;->case:Ljava/lang/String;

    .line 9
    new-instance v1, Lcom/apk/ls;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/apk/ls;-><init>(Lcom/apk/ls$if;Lcom/apk/ls$do;)V

    .line 10
    sput-object v1, Lcom/apk/ms;->do:Lcom/apk/ls;

    return-void
.end method
