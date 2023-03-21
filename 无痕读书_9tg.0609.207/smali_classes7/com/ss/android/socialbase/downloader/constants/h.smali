.class public final enum Lcom/ss/android/socialbase/downloader/constants/h;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/socialbase/downloader/constants/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ss/android/socialbase/downloader/constants/h;

.field public static final enum b:Lcom/ss/android/socialbase/downloader/constants/h;

.field public static final enum c:Lcom/ss/android/socialbase/downloader/constants/h;

.field public static final enum d:Lcom/ss/android/socialbase/downloader/constants/h;

.field public static final enum e:Lcom/ss/android/socialbase/downloader/constants/h;

.field public static final enum f:Lcom/ss/android/socialbase/downloader/constants/h;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum g:Lcom/ss/android/socialbase/downloader/constants/h;

.field public static final enum h:Lcom/ss/android/socialbase/downloader/constants/h;

.field public static final enum i:Lcom/ss/android/socialbase/downloader/constants/h;

.field public static final synthetic j:[Lcom/ss/android/socialbase/downloader/constants/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/ss/android/socialbase/downloader/constants/h;

    const-string v1, "RUN_STATUS_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/constants/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/h;->a:Lcom/ss/android/socialbase/downloader/constants/h;

    .line 2
    new-instance v0, Lcom/ss/android/socialbase/downloader/constants/h;

    const-string v1, "RUN_STATUS_PAUSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ss/android/socialbase/downloader/constants/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/h;->b:Lcom/ss/android/socialbase/downloader/constants/h;

    .line 3
    new-instance v0, Lcom/ss/android/socialbase/downloader/constants/h;

    const-string v1, "RUN_STATUS_CANCELED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ss/android/socialbase/downloader/constants/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/h;->c:Lcom/ss/android/socialbase/downloader/constants/h;

    .line 4
    new-instance v0, Lcom/ss/android/socialbase/downloader/constants/h;

    const-string v1, "RUN_STATUS_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ss/android/socialbase/downloader/constants/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/h;->d:Lcom/ss/android/socialbase/downloader/constants/h;

    .line 5
    new-instance v0, Lcom/ss/android/socialbase/downloader/constants/h;

    const-string v1, "RUN_STATUS_END_RIGHT_NOW"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ss/android/socialbase/downloader/constants/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/h;->e:Lcom/ss/android/socialbase/downloader/constants/h;

    .line 6
    new-instance v0, Lcom/ss/android/socialbase/downloader/constants/h;

    const-string v1, "RUN_STATUS_RETRY_DELAY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ss/android/socialbase/downloader/constants/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/h;->f:Lcom/ss/android/socialbase/downloader/constants/h;

    .line 7
    new-instance v0, Lcom/ss/android/socialbase/downloader/constants/h;

    const-string v1, "RUN_STATUS_WAITING_ASYNC_HANDLER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ss/android/socialbase/downloader/constants/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/h;->g:Lcom/ss/android/socialbase/downloader/constants/h;

    .line 8
    new-instance v0, Lcom/ss/android/socialbase/downloader/constants/h;

    const-string v1, "RUN_STATUS_END_FOR_FILE_EXIST"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/ss/android/socialbase/downloader/constants/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/h;->h:Lcom/ss/android/socialbase/downloader/constants/h;

    .line 9
    new-instance v0, Lcom/ss/android/socialbase/downloader/constants/h;

    const-string v1, "RUN_STATUS_ALL_CHUNK_RETRY_WITH_RESET"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/ss/android/socialbase/downloader/constants/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/h;->i:Lcom/ss/android/socialbase/downloader/constants/h;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/ss/android/socialbase/downloader/constants/h;

    .line 10
    sget-object v11, Lcom/ss/android/socialbase/downloader/constants/h;->a:Lcom/ss/android/socialbase/downloader/constants/h;

    aput-object v11, v1, v2

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/h;->b:Lcom/ss/android/socialbase/downloader/constants/h;

    aput-object v2, v1, v3

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/h;->c:Lcom/ss/android/socialbase/downloader/constants/h;

    aput-object v2, v1, v4

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/h;->d:Lcom/ss/android/socialbase/downloader/constants/h;

    aput-object v2, v1, v5

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/h;->e:Lcom/ss/android/socialbase/downloader/constants/h;

    aput-object v2, v1, v6

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/h;->f:Lcom/ss/android/socialbase/downloader/constants/h;

    aput-object v2, v1, v7

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/h;->g:Lcom/ss/android/socialbase/downloader/constants/h;

    aput-object v2, v1, v8

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/h;->h:Lcom/ss/android/socialbase/downloader/constants/h;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/ss/android/socialbase/downloader/constants/h;->j:[Lcom/ss/android/socialbase/downloader/constants/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/constants/h;
    .locals 1

    .line 1
    const-class v0, Lcom/ss/android/socialbase/downloader/constants/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/socialbase/downloader/constants/h;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/socialbase/downloader/constants/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/h;->j:[Lcom/ss/android/socialbase/downloader/constants/h;

    invoke-virtual {v0}, [Lcom/ss/android/socialbase/downloader/constants/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/socialbase/downloader/constants/h;

    return-object v0
.end method
