cd $REPO_PATH/react-frontend
npm i
npm run build
rm -r $SHIP_PATH/$SHIP/$DESK/ui
mkdir $SHIP_PATH/$SHIP/$DESK/ui
cp -r dist/* $SHIP_PATH/$SHIP/$DESK/ui/
